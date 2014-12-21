# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "pantaloon-ci"
  spec.version       = "0.0.1"
  spec.authors       = ["Arvind Kunday"]
  spec.email         = ["kunday@gmail.com"]
  spec.summary       = %q{Jenkins job builder}
  spec.description   = %q{Build Jenkins Compatible XML Config files for projects represented in pantaloon build format.}
  spec.homepage      = "https://github.com/kunday/pantaloon-cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency "clamp"
end
