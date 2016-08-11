# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dokku_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "dokku_rails"
  spec.version       = DokkuRails::VERSION
  spec.authors       = ["fearcraftor"]
  spec.email         = ["flelong@live.fr"]

  spec.summary       = "Simple Dokku client to use with you Ruby on Rails project"
  spec.description   = "Dokku Rails allows developers to execute commands on a Dokku instance directly from their Ruby on Rails app."
  spec.homepage      = "https://github.com/fearcraftor/dokku_rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency 'net-ssh', '~> 3.2', '>= 3.2.0'
end
