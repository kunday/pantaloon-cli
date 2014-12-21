require 'dish/ext'
require 'yaml'
require 'erb'

module Pantaloon
  class Configuration
    attr_accessor :config
    def initialize(config)
      @config = YAML.load(config)
    end

    def build_step
      build_template = File.read(File.expand_path("../../../lib/pantaloon/templates/build-step.erb", __FILE__))
      ERB.new(build_template).result(build_template.send(:binding))
    end

    def project_view
      build_template = File.read(File.expand_path("../../../lib/pantaloon/templates/project-view.erb", __FILE__))
      ERB.new(build_template).result(build_template.send(:binding))
    end
  end
end
