# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'td_critic'

Gem::Specification.new do |spec|
  spec.name          = 'td_critic'
  spec.version       = TdCritic::VERSION
  spec.authors       = ['Dash Boys']
  spec.email         = ['developer@td-berlin.com']

  spec.summary       = 'TD Critic is a gem that specializes in judging your coding style'
  spec.description   = spec.summary
  spec.homepage      = 'https://www.github.com/td-berlin/td_critic'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://gems.td-asp.com'
  else
    fail 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = []
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '~> 0.34.2'
  spec.add_dependency 'rubocop-rspec', '~> 1.3.1'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
