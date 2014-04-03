module ActionView
  module Helpers
    module FormHelper
      def form_for_with_furatto(record, options = {}, &block)
        options[:builder] ||= Furatto::FormBuilder
        options[:html] ||= {}
        options[:auto_labels] = true unless options.has_key? :auto_labels
        form_for_without_furatto(record, options, &block)
      end

      def fields_for_with_furatto(record_name, record_object = nil, options = {}, &block)
        options[:builder] ||= Furatto::FormBuilder
        options[:html] ||= {}
        options[:html][:attached_labels] = options[:attached_labels]
        options[:auto_labels] = true unless options.has_key? :auto_labels
        fields_for_without_furatto(record_name, record_object, options, &block)
      end

      alias_method_chain :form_for, :furatto
      alias_method_chain :fields_for, :furatto
    end
  end
end

ActionView::Base.field_error_proc = Proc.new do |html_tag, instance_tag|
  html_tag
end
