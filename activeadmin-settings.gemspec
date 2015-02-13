# -*- encoding: utf-8 -*-
require File.expand_path('../lib/activeadmin-settings/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "activeadmin-settings"
  gem.version       = ActiveadminSettings::VERSION
  gem.authors       = ["Dmitriy Nevzorov"]
  gem.email         = ["jimmy.lugat@gmail.com"]
  gem.homepage      = "https://github.com/jimmyn/activeadmin-settings"
  gem.description   = "Fork of activeadmin-settings with some improvements"
  gem.summary       = ""

  gem.require_paths = ["lib"]
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})

  gem.add_dependency("fog")
  gem.add_dependency("mini_magick")
  gem.add_dependency("carrierwave")
  gem.add_dependency("bson_ext")
end
