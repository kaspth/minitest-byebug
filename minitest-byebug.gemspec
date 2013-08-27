#encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest/byebug'

Gem::Specification.new do |spec|
  spec.name          = "minitest-byebug"
  spec.version       = Minitest::Byebug::VERSION
  spec.authors       = ["Kasper Timm Hansen"]
  spec.email         = ["kaspth@gmail.com"]
  spec.summary       = %q{Minitest plugin that starts a byebug session on test failures}
  spec.homepage      = "https://github.com/kaspth/minitest-byebug"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "byebug", "~> 1.8.2"
  spec.add_dependency "minitest", "~> 5.0.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
