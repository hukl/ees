# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require "ees/version"

Gem::Specification.new do |s|
  s.name        = "ees"
  s.version     = Ees::VERSION
  s.authors     = ["hukl"]
  s.email       = ["contact@smyck.org"]
  s.homepage    = ""
  s.summary     = "Easy Erlang Scaffold"
  s.description = "It's really easy you know?"

  s.rubyforge_project = "ees"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
