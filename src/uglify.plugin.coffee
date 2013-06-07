# Export Plugin
module.exports = (BasePlugin) ->
	# Define Plugin
	class UglifyPlugin extends BasePlugin
		# Plugin Name
		name: 'uglify'

		# Plugin Configuration
		config:
			all: true

		# Render the document
		renderDocument: (opts) ->
			# Prepare
			{file,extension} = opts

			# JavaScript
			if extension is 'js'
				if (@getConfig().all is true and file.get('minify') isnt false) or (file.get('minify') is true)
					opts.content = require('uglify-js').minify(opts.content, {fromString:true}).code

			# Chain
			@