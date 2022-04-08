# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nzholidays/version'

Gem::Specification.new do |spec|
  spec.name          = 'nzholidays'
  spec.version       = Nzholidays::VERSION
  spec.authors       = ['Carl Douglas']
  spec.email         = ['105003+carld@users.noreply.github.com']

  spec.summary       = 'New Zealand Public Holidays'
  spec.description   = 'New Zealand Public Holidays'
  spec.homepage      = 'https://github.com/carld/nzholidays'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'tzinfo', '~> 2.0.4'

  spec.add_development_dependency 'bundler',   '~> 2.2'
  spec.add_development_dependency 'icalendar', '~> 2.7.0'
  spec.add_development_dependency 'rake',      '~> 13.0'
  spec.add_development_dependency 'rspec',     '~> 3.11.0'
end
