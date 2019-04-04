# encoding: utf-8

Gem::Specification.new do |spec|
  spec.name         = 'fibonacci'
  spec.version      = '1.0.0'
  spec.authors      = ['Ruby Developer']
  spec.summary      = "A Helix project"
  spec.files        = Dir['{lib/**/*,[A-Z]*}']

  spec.platform     = Gem::Platform::RUBY
  spec.require_path = 'lib'

  spec.add_dependency 'helix_runtime', '~> 0.7.5'
  spec.add_development_dependency 'irb'
end
