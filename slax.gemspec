# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slax/version'

Gem::Specification.new do |spec|
  spec.name          = "slax"
  spec.version       = Slax::VERSION
  spec.authors       = ["Migara Liyanagamage"]
  spec.email         = ["mliyanagamage@gmail.com"]

  spec.summary       = %q{Slack incoming webhooks made easy. Ruby easy.}
  spec.description   = %q{Send slack incoming webhooks using an easy builder}
  spec.homepage      = "https://github.com/OzGuild/slax"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0.0'
  spec.add_dependency 'httparty', '~> 0'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0"
end
