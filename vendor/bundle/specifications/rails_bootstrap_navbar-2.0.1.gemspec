# -*- encoding: utf-8 -*-
# stub: rails_bootstrap_navbar 2.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_bootstrap_navbar".freeze
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Manuel Meurer".freeze]
  s.date = "2014-02-15"
  s.description = "Easily generate a Twitter Bootstrap navbar in your Rails app".freeze
  s.email = "manuel@krautcomputing.com".freeze
  s.homepage = "https://github.com/bootstrap-ruby/rails-bootstrap-navbar".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Easily generate a Twitter Bootstrap navbar in your Rails app".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 10.0.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.13"])
      s.add_development_dependency(%q<guard-rspec>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<bootstrap-navbar>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<rails>.freeze, [">= 3.0.0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 10.0.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.13"])
      s.add_dependency(%q<guard-rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<bootstrap-navbar>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rails>.freeze, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 10.0.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.13"])
    s.add_dependency(%q<guard-rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<bootstrap-navbar>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rails>.freeze, [">= 3.0.0"])
  end
end
