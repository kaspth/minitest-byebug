#encoding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "minitest-byebug"
  spec.version       = "0.0.3"
  spec.authors       = ["Kasper Timm Hansen"]
  spec.email         = ["kaspth@gmail.com"]
  spec.summary       = %q{Minitest plugin that starts a byebug session on test failures}
  spec.homepage      = "https://github.com/kaspth/minitest-byebug"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "byebug"
  spec.add_dependency "minitest", "~> 5.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
