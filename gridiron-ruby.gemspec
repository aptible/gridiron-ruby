# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'English'
require 'aptible/gridiron/version'

Gem::Specification.new do |spec|
  spec.name          = 'aptible-gridiron'
  spec.version       = Aptible::Gridiron::VERSION
  spec.authors       = ['Frank Macreery']
  spec.email         = ['frank@macreery.com']
  spec.description   = 'Ruby client for gridiron.aptible.com'
  spec.summary       = 'Ruby client for gridiron.aptible.com'
  spec.homepage      = 'https://github.com/aptible/gridiron-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.test_files    = spec.files.grep(%r{^spec\/})
  spec.require_paths = ['lib']

  spec.add_dependency 'aptible-resource', '>= 0.3.7'
  spec.add_dependency 'aptible-auth', '>= 0.11.10'
  spec.add_dependency 'gem_config'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'aptible-tasks', '>= 0.4.0'
  spec.add_development_dependency 'activesupport'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'foreman'
  spec.add_development_dependency 'pry'
end
