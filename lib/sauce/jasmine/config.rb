require 'sauce/jasmine/selenium_driver'

module Sauce
  module Jasmine
    class Config
      attr_accessor :tunnel_domain
      attr_accessor :port
      attr_accessor :server

      def initialize(options)
        sauce_connect = true
        @port = options[:port] ||= 8080
        @server = options[:server] ||= 'auto'
        @server = @server.to_sym
        @tunnel_domain = "#{rand(10000)}.jasmine.test"
      end

      def quiet_tunnel?
        ENV['DEBUG'] != "true"
      end
    end
  end
end
