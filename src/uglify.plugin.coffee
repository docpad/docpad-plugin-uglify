# Export Plugin
module.exports = (BasePlugin) ->
	# Define Plugin
	class UglifyPlugin extends BasePlugin
		# Plugin Name
		name: 'uglify'

		# Plugin Configuration
		config:
			# Disable on the development environment.
			environments:
				development:
					enabled: false
			
			# Allow turning off minifcation entirely.
			minify: true

		# Constructor
		constructor: ->
			# Prepare
			super

			# Load UglifyJS
			@UglifyJS = require 'uglify-js'

			# Chain
			@

		# Render the document
		renderDocument: (opts,next) ->
			# Prepare.
			{extension, templateData, file, content} = opts
			
			# Ensure we are acting on a JavaScript document.
			if extension == 'js' and file.type == 'document'
				# Construct the options.
				config = @getConfig()
				uglifyOptions = {
					fromString: true
					# TODO: Make use of "output" variable to display status.
				}

				# Allow use of global config options.
				for own key, value of config
					uglifyOptions[key] = value

				# Allow overriding using the document options.
				if templateData.document.uglify or false
					for own key, value of templateData.document.uglify
						uglifyOptions[key] = value

				# Check whether or not we should act on the document at all.
				if uglifyOptions['minify'] or false
					# Render the page with UglifyJS.
					result = @UglifyJS.minify(content, uglifyOptions)
					opts.content = result.code

			# Done, return back to DocPad
			return next()
