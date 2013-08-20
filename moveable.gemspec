# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'moveable/version'

Gem::Specification.new do |spec|
  spec.name          = "moveable"
  spec.version       = Moveable::VERSION
  spec.authors       = ["Andrey"]
  spec.email         = ["railscode@gmail.com"]
  spec.description   = "Move object up and down with Rails and nested set tree"
  spec.summary       = "Move object up and down with Rails and nested set tree"
  spec.homepage      = "https://github.com/st-granat/moveable"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
