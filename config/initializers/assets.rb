# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.scss, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.compile = true
Rails.application.config.assets.precompile += %w( application.js members.js active_admin.js common-scripts.js visits.js application.scss active-admin_admin.scss style.css style-responsive.css table-responsive.css )
#
#
# Rails.application.config.assets.precompile += %w( admins_stylesheet.scss application.css *.css merchant/*.css admin/*/*.css admin/*.css admin/*.scss customers/*.css customers/*.scss)
# Rails.application.config.assets.precompile += %w( admin/*.js score_meter/*.js merchant_modal_file.js admins_js.js admins/*.js application.js merchants_js.js merchant/*.js  atms.js admins.js tracker/*.js)
# # Rails.application.config.assets.precompile += %w(merchant_img/main-logo.png *.jpeg *.jpg *.gif )
# Rails.application.config.assets.precompile += %w( admins_stylesheet.scss application.css *.css   merchant/*.css  )
# Rails.application.config.assets.precompile += %w( admins_js.js admins/*.js application.js merchants_js.js merchant/*.js customers/*.js atms.js admins.js users/*.js)
# Rails.application.config.assets.precompile += %w( libphonenumber/utils.js )
# Rails.application.config.assets.precompile += %w(*.jpeg *.jpg *.gif *.png *.svg)
# Rails.application.config.assets.precompile += %w( side_panel/js/adminlte.js side_panel/css/AdminLTE.css )
# Rails.application.config.assets.precompile += %w( checkout.js.erb )
# Rails.application.config.assets.precompile += %w(v2/* v2/merchant/* v2/merchant/*.js)
# Rails.application.config.assets.precompile += %w(v2/*/*.js v2/*/*.css v2/*/*.scss)
# # Precompile additional assets.
# # application.js, application.css, and all non-JS/CSS in the app/assets
# # folder are already added.
# # Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( Chart.bundle )
