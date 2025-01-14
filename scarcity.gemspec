# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{scarcity}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kristopher J. Kosmatka"]
  s.date = %q{2011-08-11}
  s.default_executable = %q{scarcity}
  s.description = %q{An application framework for condor projects}
  s.email = %q{kosmatka@cs.wisc.edu}
  s.executables = ["scarcity"]
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app_generators/scarcity/USAGE",
    "app_generators/scarcity/scarcity_generator.rb",
    "app_generators/scarcity/templates/boot.rb",
    "app_generators/scarcity/templates/control.rb",
    "app_generators/scarcity/templates/dag_builder.rb",
    "app_generators/scarcity/templates/environment.rb",
    "app_generators/scarcity/templates/executable.py",
    "app_generators/scarcity/templates/executable.submit",
    "app_generators/scarcity/templates/null.submit",
    "app_generators/scarcity/templates/postjob.py",
    "app_generators/scarcity/templates/prejob.py",
    "app_generators/scarcity/templates/provisions_builder.rb",
    "app_generators/scarcity/templates/return_codes.yml",
    "app_generators/scarcity/templates/server",
    "app_generators/scarcity/templates/views/configuration.erb",
    "app_generators/scarcity/templates/views/data.erb",
    "app_generators/scarcity/templates/views/documentation.erb",
    "app_generators/scarcity/templates/views/index.erb",
    "app_generators/scarcity/templates/views/layout.erb",
    "app_generators/scarcity/templates/views/segment.erb",
    "app_generators/scarcity/templates/views/segments.erb",
    "app_generators/scarcity/templates/views/stylesheet.css",
    "app_generators/scarcity/templates/views/webapp.rb",
    "bin/scarcity",
    "lib/scarcity.rb",
    "lib/scarcity/dagger.rb",
    "lib/scarcity/provisions/actions.rb",
    "lib/scarcity/provisions/core.rb",
    "lib/scarcity/segment.rb",
    "lib/scarcity/submission.rb",
    "scarcity.gemspec",
    "script/console",
    "script/destroy",
    "script/generate",
    "test/test.dag",
    "test/test_archive_actions.rb",
    "test/test_dagger.rb",
    "test/test_generator_helper.rb",
    "test/test_helper.rb",
    "test/test_provision.rb",
    "test/test_return_codes.rb",
    "test/test_scarcity.rb",
    "test/test_segment.rb",
    "test/test_soar_generator.rb",
    "test/test_submission.rb"
  ]
  s.homepage = %q{http://github.com/kjkosmatka/scarcity}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{An application framework for condor projects}
  s.test_files = [
    "test/test_archive_actions.rb",
    "test/test_dagger.rb",
    "test/test_generator_helper.rb",
    "test/test_helper.rb",
    "test/test_provision.rb",
    "test/test_return_codes.rb",
    "test/test_scarcity.rb",
    "test/test_segment.rb",
    "test/test_soar_generator.rb",
    "test/test_submission.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<scarcity>, [">= 0"])
      s.add_runtime_dependency(%q<sinatra>, ["~> 1.2.6"])
      s.add_runtime_dependency(%q<rubigen>, ["~> 1.5.6"])
      s.add_runtime_dependency(%q<time_diff>, ["~> 0.2.1"])
    else
      s.add_dependency(%q<scarcity>, [">= 0"])
      s.add_dependency(%q<sinatra>, ["~> 1.2.6"])
      s.add_dependency(%q<rubigen>, ["~> 1.5.6"])
      s.add_dependency(%q<time_diff>, ["~> 0.2.1"])
    end
  else
    s.add_dependency(%q<scarcity>, [">= 0"])
    s.add_dependency(%q<sinatra>, ["~> 1.2.6"])
    s.add_dependency(%q<rubigen>, ["~> 1.5.6"])
    s.add_dependency(%q<time_diff>, ["~> 0.2.1"])
  end
end

