# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'facebook/messenger/conversations/version'

Gem::Specification.new do |spec|
  spec.name          = "facebook-messenger-conversations"
  spec.version       = Facebook::Messenger::Conversations::VERSION
  spec.authors       = ["Torgeir Øverland"]
  spec.email         = ["torgeir@hyper.no"]

  spec.summary       = 'Save conversation threads from facebook-messenger gem'
  spec.description   = 'Save conversation threads from facebook-messenger gem'
  spec.homepage      = "https://github.com/hyperoslo/facebook-messenger-conversations"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'facebook-messenger', '~> 0.4'
  spec.add_runtime_dependency 'sequel', '~> 4.34'
  spec.add_runtime_dependency 'sqlite3'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
