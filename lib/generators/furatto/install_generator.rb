require 'rails/generators'

module Furatto

  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.join(File.dirname(__FILE__), 'templates')
      argument :layout_name, :type => :string, :default => 'application', :banner => 'layout_name'

      attr_reader :app_name

      def add_assets
        app = ::Rails.application
        @app_name = app.class.to_s.split("::").first
        # rails_ujs breaks, need to incorporate rails-behavior plugin for this to work seamlessly
        # gsub_file "app/assets/javascripts/application#{detect_js_format[0]}", /\/\/= require jquery\n/, ""
        insert_into_file "app/assets/javascripts/application#{detect_js_format[0]}", "#{detect_js_format[1]} require furatto\n", :after => "jquery_ujs\n"
        settings_file = File.join(File.dirname(__FILE__),"..", "..", "..", "vendor", "assets", "stylesheets", "furatto", "_settings.scss")

        create_file "app/assets/stylesheets/furatto_overrides.scss", File.read(settings_file)
        append_to_file "app/assets/stylesheets/furatto_overrides.scss", "\n@import 'furatto';\n"
        insert_into_file "app/assets/stylesheets/application#{detect_css_format[0]}", "\n#{detect_css_format[1]} require furatto_overrides\n", :after => "require_self"
      end

      def detect_js_format
        return ['.coffee', '#='] if File.exist?('app/assets/javascripts/application.coffee')
        return ['.js.coffee', '#='] if File.exist?('app/assets/javascripts/application.js.coffee')
        return ['.js', '//='] if File.exist?('app/assets/javascripts/application.js')
      end

      def detect_css_format
        return ['.css', ' *='] if File.exist?('app/assets/stylesheets/application.css')
        return ['.css.sass', ' //='] if File.exist?('app/assets/stylesheets/application.css.sass')
        return ['.sass', ' //='] if File.exist?('app/assets/stylesheets/application.sass')
        return ['.css.scss', ' //='] if File.exist?('app/assets/stylesheets/application.css.scss')
        return ['.scss', ' //='] if File.exist?('app/assets/stylesheets/application.scss')
      end

      def create_layout
        template 'application.html.erb', "app/views/layouts/#{layout_file_name}.html.erb"
      end

      private

      def layout_file_name 
        layout_name.underscore.downcase
      end
    end
  end
end
