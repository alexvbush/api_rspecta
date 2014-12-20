# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'api_rspecta/version'

Gem::Specification.new do |spec|
  spec.name          = "api_rspecta"
  spec.version       = ApiRspecta::VERSION
  spec.authors       = ["Smart Cloud, Inc.", "Alex Bush", "Alex Petropavlovsky"]
  spec.email         = ["alex.v.bush@gmail.com", "petalvlad@gmail.com"]
  spec.summary       = %q{ api_rspecta adds convenient methods to your RSpec to test JSON APIs. }
  spec.description   = %q{ 
    `api_rspecta` adds following helper methods to test your JSON APIs with RSpec:

    **JSON:**
    - `#json` returns parsed `last_response.body`
    - `#refresh_json` reparses `last_response.body`
    - `#print_json` to `JSON.pretty_generate` last response JSON
    - `#json_has_key` tells you if passed json object has a `key`
    - `#json_has_keys` same as above but for a list of keys
    - `#json_has_no_key` is opposite to `#json_has_key`

    **Response:**
      - `should_respond_ok` checks if `last_response.status` was 200
    - `should_respond_created` checks if `last_response.status` was 201
    - `should_respond_with_no_content` checks if `last_response.status` was 204
    - `should_respond_not_authenticated` checks if `last_response.status` was 401
    - `should_respond_not_authorized` checks if `last_response.status` was 403
    - `should_respond_not_found` checks if `last_response.status` was 404
    - `should_respond_with_error_for` checks if `last_response.status` was 422 and that `json` has `errors` for passed `field`
    - `should_respond_with_errors_for` same as above but for a list of errors

  }
  spec.homepage      = "https://github.com/SmartCloud/api_rspecta"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0.0"

  #spec.add_runtime_dependency 'rspec', '~> 3.0.0'
end
