# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "refinerycms-page_seeder/version"

Gem::Specification.new do |s|
  s.name        = "refinerycms-page_seeder"
  s.version     = Refinerycms::PageSeeder::VERSION
  s.authors     = ["James Thompson"]
  s.email       = ["james.b.thompson@gmail.com"]
  s.homepage    = "https://github.com/julesce/refinerycms-page_seeder"
  s.summary     = %q{Page seeding helper class for RefineryCMS pages.}
  s.description = %q{Simple helper class to make life a bit easier when seeding RefineryCMS pages.}

  #s.rubyforge_project = "refinerycms-page_seeder"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'refinerycms-pages', '~> 2.0.0'
end
