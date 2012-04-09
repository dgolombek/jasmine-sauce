require 'sauce/jasmine/selenium_driver'

module Sauce
  module Jasmine
    class Config
      attr_accessor :tunnel_domain

      def initialize
        sauce_connect = true
        @tunnel_domain = "#{rand(10000)}.jasmine.test"
      end

      def quiet_tunnel?
        ENV['DEBUG'] != "true"
      end
    end
  end
end
