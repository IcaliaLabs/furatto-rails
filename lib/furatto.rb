require "furatto/version"

module Furatto 

  def self.load!
    register_rails_engine
  end

  private

    def self.register_rails_engine
      require 'furatto/engine'
    end
end

Furatto.load!
