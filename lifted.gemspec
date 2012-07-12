# -*- encoding: utf-8 -*-
require File.expand_path('../lib/lifted/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Lee Dohm"]
  gem.email         = ["lee@liftedstudios.com"]
  gem.description   = "Utilities for use in Lifted Studios code."
  gem.summary       = "Utilities for use in Lifted Studios code."
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "lifted"
  gem.require_paths = ["lib"]
  gem.version       = Lifted::VERSION
end
