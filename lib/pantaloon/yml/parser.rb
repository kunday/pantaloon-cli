require 'yaml'

module Pantaloon
  module Yml
    class Parser
      attr_accessor :config
      def initialize(config)
        @config = config
      end

      def config_xml
      end
    end
  end
end
