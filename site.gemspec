# -*- encoding: utf-8 -*-
require File.expand_path('../lib/site/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Rodrigo Rosalin"]
  gem.email         = ["rodrigo@neemo.com.br"]
  gem.description   = %q{Site}
  gem.summary       = %q{Site}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(site|spec|features)/})
  gem.name          = "site"
  gem.require_paths = ["lib"]
  gem.version       = Site::VERSION
  gem.add_dependency 'simple_form'
end