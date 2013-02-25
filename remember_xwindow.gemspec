# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'remember_xwindow/version'

Gem::Specification.new do |gem|
  gem.name          = "remember_xwindow"
  gem.version       = RememberXwindow::VERSION
  gem.authors       = ["Ernie Brodeur"]
  gem.email         = ["ebrodeur@ujami.net"]
  gem.description   = "A gem to help remembe/return to a running Xwindow application."
  gem.summary       = "This is designed to emulate the feature in other os's that binds a single key to a running instance of an app."
  gem.homepage      = "http://www.github.com/erniebrodeur/remember_xwindow"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_runtime_dependency 'bini'
end
