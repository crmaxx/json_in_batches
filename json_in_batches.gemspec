lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'json_in_batches/version'

Gem::Specification.new do |gem|
  gem.name          = 'json_in_batches'
  gem.version       = JsonInBatches::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ['Maxim Zhukov']
  gem.email         = %w(crmaxx@gmail.com)
  gem.description   = %q{Library for streamed JSON}
  gem.summary       = %q{Library for streamed JSON}
  gem.homepage      = 'http://github/crmaxx/json_in_batches'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = %w(lib)

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '~> 2.3'
  gem.add_development_dependency 'sqlite3'

  gem.add_dependency 'yajl-ruby'
  gem.add_dependency 'activerecord', '~> 3.0'
end
