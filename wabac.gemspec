# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wabac/version'

Gem::Specification.new do |gem|
  gem.name          = "wabac"
  gem.version       = Wabac::VERSION
  gem.authors       = ["hari"]
  gem.email         = ["hari.gene@ymail.com"]
  gem.description   = %q{History plugin for rails}
  gem.summary       = %q{History plugin for rails}
  gem.homepage      = "https://github.com/ha-kr/wabac"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'

end

