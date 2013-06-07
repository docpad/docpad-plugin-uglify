# Export Plugin
module.exports = (BasePlugin) ->
	# Define Plugin
	class UglifyPlugin extends BasePlugin
		# Plugin Name
		name: 'uglify'

		# Render the document
		renderDocument: (opts) ->
			# Prepare
			{extension} = opts

			# JavaScript
			if extension is 'js'
				# Render and complete
				opts.content = require('uglify-js').minify(opts.content, {fromString:true}).code

			# Chain
			@