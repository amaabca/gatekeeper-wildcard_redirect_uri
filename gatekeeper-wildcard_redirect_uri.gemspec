# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gatekeeper/wildcard_redirect_uri/version'

Gem::Specification.new do |spec|
  spec.name          = "gatekeeper-wildcard_redirect_uri"
  spec.version       = Gatekeeper::WildcardRedirectUri::VERSION
  spec.authors       = ["Ryan Jones"]
  spec.email         = ["ryan@system88.com"]
  spec.summary       = %q{Allow gatekeeper to wildcard redirect_uri's}
  spec.description   = %q{Allow gatekeeper to wildcard redirect_uri's}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
