# -*- encoding: utf-8 -*-
require File.expand_path('../lib/activeadmin-settings/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "activeadmin-settings"
  gem.version       = ActiveadminSettings::VERSION
  gem.authors       = ["Alex Kravets"]
  gem.email         = ["santyor@gmail.com"]
  gem.homepage      = "https://github.com/slate-studio/activeadmin-settings"
  gem.description   = "Easy to use general purpose settings backend for activeadmin"
  gem.summary       = ""

  gem.require_paths = ["lib"]
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})

  gem.add_dependency("fog", ">= 1.27.0")
  gem.add_dependency("mini_magick", ">= 3.8.1")
  gem.add_dependency("carrierwave", ">= 0.8.0")
  gem.add_dependency("bson_ext", ">= 1.8.2")
  gem.add_dependency("activeadmin", ">= 1.0.0.pre")
  gem.add_dependency("selectize-rails", ">= 0.11.0")
end
