# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rack-server_errors"
  spec.version       = 0.0.1 
  spec.authors       = ["junsumida"]
  spec.email         = ["jun.sumida@mixi.co.jp"]
  spec.summary       = %q{Rack middleware to catch exceptions and returns 500 error.}
  spec.description   = %q{Rack::ServerErrors is a Rack middleware which catches exceptions from your Rack application and returns 500 error response in json.}
  spec.homepage      = "https://github.com/junsumida/rack-server_errors"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "sinatra"
end
