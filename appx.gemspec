# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'appx/version'

Gem::Specification.new do |spec|
  spec.name          = "appx"
  spec.version       = Appx::VERSION
  spec.authors       = ["Andrew Halligan"]
  spec.email         = ["andrew@halligan.ca"]

  spec.summary       = "Appx"
  spec.description   = "Read .appx file manifests."
  spec.homepage      = "http://github.com/nearlyfreeapps/appx"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~> 1.6.7.2"
  spec.add_dependency "rubyzip", "~> 1.2.0"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
