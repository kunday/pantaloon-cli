require File.expand_path('../../../../lib/pantaloon/configuration', __FILE__)

describe Pantaloon::Configuration do
  let(:config) { File.read("spec/fixtures/pantaloon.yml") }
  let(:subject) { Pantaloon::Configuration.new(config) }

  it "should get the right git url" do
    expect(subject.config).to eq(YAML.load(config))
  end
end
