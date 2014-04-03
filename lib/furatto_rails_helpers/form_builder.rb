require 'action_view/helpers'

module Furatto
  class FormBuilder < ActionView::Helpers::FormBuilder
    include ActionView::Helpers::TagHelper

    %w(file_field email_field text_field text_area telephone_field phone_field 
       url_field number_field date_field datetime_field datetime_local_field
       month_field week_field time_field range_field search_field color_field ).each do |method_name|
      define_method(method_name) do |*args|
        attribute = args[0]
        options   = args[1] || {}
        field(attribute, options) do |options|
          super(attribute, options)
        end
      end
    end

    def label(attribute, text = nil, options = {})
      options[:class] ||= ""
      options[:class] += " error" if has_error?(attribute)
      super(attribute, (text || "").html_safe, options)
    end

    def password_field(attribute, options = {})
      field attribute, options do |options|
        super(attribute, options.merge(:autocomplete => :off))
      end
    end

    private

    def has_error?(attribute)
      object.respond_to?(:errors) && !object.errors[attribute].blank?
    end

    def error_for(attribute, options = {})
      if has_error?(attribute)
        error_messages = object.errors[attribute].join(', ')
        error_messages = error_messages.html_safe if options[:html_safe_errors]
        content_tag(:span, error_messages, :class => "error help-hint")
      end
    end

    def error_and_hint(attribute, options = {})
      html = ""
      html += error_for(attribute, options) || ""
      html.html_safe
    end

    def field(attribute, options, &block)
      html = ''.html_safe
      options[:class] = " error" if has_error?(attribute)
      html += yield(options)
      html += error_and_hint(attribute, options)
    end
  end
end
