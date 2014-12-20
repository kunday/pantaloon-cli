require File.expand_path('../../../../lib/pantaloon/yml/configuration', __FILE__)

describe Pantaloon::Yml::Configuration do
  let(:config) { File.read("spec/fixtures/pantaloon.yml") }
  let(:subject) { Pantaloon::Configuration.new(config) }

  it "should get the right git url" do
    expect(subject.url).to eq("https://git.realestate.com.au/akunday/cp-domain/")
  end
end
