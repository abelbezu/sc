# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('bower_components')
# Add Yarn node_modules folder to the asset load path.
# Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( bootstrap/dist/css/bootstrap.css )
Rails.application.config.assets.precompile += %w( medium-editor/dist/css/medium-editor.css )
Rails.application.config.assets.precompile += %w( medium-editor/dist/css/themes/default.css)
Rails.application.config.assets.precompile += %w( medium-editor-insert-plugin/dist/css/medium-editor-insert-plugin.min.css )

Rails.application.config.assets.precompile += %w( cocoon.js )
Rails.application.config.assets.precompile += %w( medium-editor/dist/js/medium-editor.js )
Rails.application.config.assets.precompile += %w( jquery/dist/jquery.min.js )
Rails.application.config.assets.precompile += %w( handlebars/handlebars.runtime.min.js )
Rails.application.config.assets.precompile += %w( blueimp-file-upload/js/vendor/jquery.ui.widget.js )
Rails.application.config.assets.precompile += %w( blueimp-file-upload/js/jquery.iframe-transport.js )
Rails.application.config.assets.precompile += %w( blueimp-file-upload/js/jquery.fileupload.js )
Rails.application.config.assets.precompile += %w( medium-editor-insert-plugin/dist/js/medium-editor-insert-plugin.min.js )
