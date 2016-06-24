Gem::Specification.new do |s|
  s.name          = "ScriptHelpers"
  s.version       = "0.0.0"
  s.date          = "2016-06-23"
  s.summary       = "ScriptHelpers"
  s.description   = "A collection of mixins that makes writing backfills and other scripts easier."
  s.authors       = ["Jack Hall"]
  s.email         = "hall.d.jack@gmail.com"
  s.homepage      = "https://github.com/jackdhall/ScriptHelpers"
  s.license       = "MIT"

  s.require_paths = ['lib']
  s.files       = %w(LICENSE README.md script_helpers.gemspec)
  # s.files       = %w(CHANGELOG.md CONTRIBUTING.md LICENSE README.md Rakefile script_helpers.gemspec)
  s.files      += Dir['lib/**/*.rb']
  s.files      += Dir['spec/**/*.rb']
  s.test_files  = Dir['spec/**/*.rb']

  s.add_development_dependency 'bundler', '~> 1.11.2'
  s.add_development_dependency 'rake', '~> 10.4.2'
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'timecop', '~> 0.8.0'
end
