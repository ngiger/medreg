# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'medreg/version'

Gem::Specification.new do |spec|
  spec.name        = "medreg"
  spec.version     =  Medreg::VERSION
  spec.author      = "Niklaus Giger, Zeno R.R. Davatz"
  spec.email       = "ngiger@ywesee.com, zdavatz@ywesee.com"
  spec.description = "Personen und Betriebe Adressen für die Schweiz."
  spec.summary     = "Helper module for ch.oddb.org"
  spec.homepage    = "https://github.com/zdavatz/medreg"
  spec.license       = "GPL-v2"
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'mechanize'
  spec.add_dependency 'rubyXL', '3.3.1'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "flexmock"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "minitest"
end

