module ActiveadminSettings
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc << "Description:\n    Copies source files to your application's app directory and required gems."

      source_root File.expand_path('../templates', __FILE__)

      def copy_files
        # config
        puts "Installing config:"
        copy_file "config/activeadmin_settings.yml", "config/activeadmin_settings.yml"
      end

      def mount_engine
        route "mount_activeadmin_settings()"
      end

      def add_assets
        if File.exist?('app/assets/javascripts/active_admin.js')
          insert_into_file  "app/assets/javascripts/active_admin.js",
                            "//= require activeadmin_settings\n", :after => "base\n"
        elsif File.exist?('app/assets/javascripts/active_admin.js.coffee')
          insert_into_file  "app/assets/javascripts/active_admin.js.coffee",
                            "#= require activeadmin_settings\n", :after => "base\n"
        else
          puts "It doesn't look like you've installed activeadmin: active_admin.js and active_admin.js.coffee are missing.\nPlease install it and try again."
        end

        if File.exist?('app/assets/stylesheets/active_admin.css.scss')
          prepend_to_file "app/assets/stylesheets/active_admin.css.scss",
                            "@import 'activeadmin_settings';\n"
        else
          puts "It doesn't look like you've installed activeadmin: active_admin.scss is missing.\nPlease install it and try again."
        end
      end
    end
  end
end
