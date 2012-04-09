require 'guard/jasmine/server'

module Sauce
  module Jasmine
    class Server
      attr_reader :port, :host

      def initialize(config)
        @config = config
        @host = "127.0.0.1"
      end

      def start
        @port = 8080
        ::Guard::Jasmine::Server.start(:auto, 8080, 'test', 'spec/javascrips')
      end

      def stop
        # nothing, yet
      end
    end
  end
end
