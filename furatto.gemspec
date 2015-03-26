# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'furatto/version'

Gem::Specification.new do |gem|
  gem.name          = "furatto"
  gem.version       = Furatto::VERSION
  gem.authors       = ["Abraham Kuri Vargas"]
  gem.email         = ["kurenn@icalialabs.com"]
  gem.description   = %q{Integrates the Furatto CSS Framework to the Rails assets Pipeline}
  gem.summary       = %q{Furatto CSS Framework for Rails 3.1 Asset Pipeline}
  gem.homepage      = "https://github.com/IcaliaLabs/furatto-rails"
  gem.license       = 'GPL'

  gem.rubyforge_project = "furatto-rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'railties', ['>= 3.1.0']
  gem.add_dependency "actionpack", ['>= 3.1']
  gem.add_dependency "activemodel", ['>= 3.1']
  gem.add_dependency "compass-rails", ['~> 2.0']
end
