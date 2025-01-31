# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina/foreman/version'

Gem::Specification.new do |spec|
  spec.name          = 'mina-foreman'
  spec.version       = Mina::Foreman::VERSION
  spec.authors       = ['Stjepan Hadjic']
  spec.email         = ['d4be4st@gmail.com']

  spec.summary       = %q{Mina plugin for foreman}
  spec.description   = %q{Mina plugin for foreman}
  spec.homepage      = 'https://github.com/mina-deploy/mina-foreman'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  #spec.add_dependency 'mina', '1.0.0.beta1'
end
