# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cleanthor/version'

Gem::Specification.new do |gem|
  gem.name          = "cleanthor"
  gem.version       = Cleanthor::VERSION
  gem.authors       = ["Michael Johnston"]
  gem.email         = ["lastobelus@mac.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency "thor", "~> 0.16"
  gem.add_dependency "activesupport"
end
