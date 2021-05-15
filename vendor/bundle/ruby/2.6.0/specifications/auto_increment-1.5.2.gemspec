# -*- encoding: utf-8 -*-
# stub: auto_increment 1.5.2 ruby lib

Gem::Specification.new do |s|
  s.name = "auto_increment".freeze
  s.version = "1.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Felipe Diesel".freeze]
  s.date = "2020-12-19"
  s.description = "Automaticaly increments a string or integer field in ActiveRecord.".freeze
  s.email = ["diesel@hey.com".freeze]
  s.homepage = "http://github.com/felipediesel/auto_increment".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.9".freeze
  s.summary = "Auto increment a string or integer field".freeze

  s.installed_by_version = "3.0.9" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 4.0"])
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4.0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-nc>.freeze, [">= 0"])
      s.add_development_dependency(%q<guard>.freeze, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<fuubar>.freeze, [">= 0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 1.3.13"])
    else
      s.add_dependency(%q<activerecord>.freeze, [">= 4.0"])
      s.add_dependency(%q<activesupport>.freeze, [">= 4.0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-nc>.freeze, [">= 0"])
      s.add_dependency(%q<guard>.freeze, [">= 0"])
      s.add_dependency(%q<guard-rspec>.freeze, [">= 0"])
      s.add_dependency(%q<fuubar>.freeze, [">= 0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 1.3.13"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 4.0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 4.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-nc>.freeze, [">= 0"])
    s.add_dependency(%q<guard>.freeze, [">= 0"])
    s.add_dependency(%q<guard-rspec>.freeze, [">= 0"])
    s.add_dependency(%q<fuubar>.freeze, [">= 0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 1.3.13"])
  end
end
