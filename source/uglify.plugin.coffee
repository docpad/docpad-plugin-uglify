# Export Plugin
module.exports = (BasePlugin) ->
	# Prepare
	uglifyJS = require 'uglify-js'

	# Define Plugin
	class UglifyPlugin extends BasePlugin
		# Plugin Name
		name: 'uglify'

		# Plugin Configuration
		config:
			# Disable on the development environment
			environments:
				development:
					enabled: false

		# Render the document
		renderDocument: (opts,next) ->
			# Prepare
			config = @getConfig()
			{extension, file, content} = opts
			uglifyOpts = file.get('uglify')
			uglifyOptsDefault = config.uglifyOpts or {}

			# Ensure we are acting on a JavaScript document
			if extension == 'js' and file.type == 'document' and uglifyOpts
				# Construct the options.
				uglifyOpts = {}  if typeof uglifyOpts is 'boolean'

				# Inject the default configuration options
				for own key, value of uglifyOptsDefault
					uglifyOpts[key] ?= value

				# Minify the content with UglifyJS
				try
					result = uglifyJS.minify(content, uglifyOpts)
					if result.error
						return next(result.error)
					else
						opts.content = result.code
				catch err
					return next(err)

			# Done, return back to DocPad
			return next()
