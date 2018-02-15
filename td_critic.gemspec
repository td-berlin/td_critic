# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'td_critic/version'

Gem::Specification.new do |spec|
  spec.name          = 'td_critic'
  spec.version       = TdCritic::VERSION
  spec.authors       = ['Dash Boys']
  spec.email         = ['developer@td-berlin.com']

  spec.summary       = 'TD Critic is a gem that specializes in judging ' \
                       'your coding style.'
  spec.description   = 'TD Critic uses rubocop to check your code based ' \
                       'on the Ruby Style Guide.'
  spec.homepage      = 'https://www.github.com/td-berlin/td_critic'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = []
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '~> 0.46'
  spec.add_dependency 'rubocop-rspec', '~> 1.9'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
