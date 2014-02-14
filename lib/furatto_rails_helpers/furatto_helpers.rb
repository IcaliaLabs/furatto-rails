require 'action_view/helpers'

module ActionView
  module Helpers
    def navigation_bar(options = {}, &block)
      content_tag options[:tag] || :nav, capture(&block), class: "navigation-bar #{options[:class]}"
    end

    def off_screen(options = {}, &block)
      content_tag :div, capture(&block), class: 'off-screen', id: 'off-screen'
    end

    def furatto_alert(options = {}, &block)
      content_tag :div, class: "alert #{options[:variation]}" do
        capture(&block)
      end
    end
  end
end
