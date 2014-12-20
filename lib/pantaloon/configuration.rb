require 'yaml'

module Pantaloon
  class Configuration
    attr_accessor :config
    def initialize(config)
      @config = YAML.load(config)
    end

    def url
      config["url"]
    end

    def repo
      config["repo"]
    end
  end
end
