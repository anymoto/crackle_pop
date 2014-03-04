# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'crackle_pop/version'

Gem::Specification.new do |spec|
  spec.name          = "crackle_pop"
  spec.version       = CracklePop::VERSION
  spec.authors       = ["anymoto"]
  spec.email         = ["ana@castromartinez.com"]
  spec.description   = %q{Prints out numbers from 1 to 100, replacing number with Crackle, Pop or CracklePop}
  spec.summary       = %q{Prints out numbers}
  spec.homepage      = "github.com/anymoto/crackle_pop"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
