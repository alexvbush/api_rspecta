# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'api_rspecta/version'

Gem::Specification.new do |spec|
  spec.name          = "api_rspecta"
  spec.version       = ApiRspecta::VERSION
  spec.authors       = ["Alex Bush", "Alexander Petropavlovsky"]
  spec.email         = ["alex.v.bush@gmail.com", "petalvlad@gmail.com"]
  spec.summary       = %q{ api_rspecta adds convenient methods to your RSpec to test JSON APIs. }
  spec.description   = %q{ TODO: Write a longer description. Optional. }
  spec.homepage      = "http://www.sm-cloud.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
