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
  gem.files       = %w(CHANGELOG.md CONTRIBUTING.md LICENSE README.md Rakefile script_helpers.gemspec)
  gem.files      += Dir['lib/**/*.rb']
  gem.files      += Dir['spec/**/*.rb']
  gem.test_files  = Dir['spec/**/*.rb']

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '~> 3.0'
end
