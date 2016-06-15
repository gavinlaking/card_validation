# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'card_validation/version'

Gem::Specification.new do |spec|
  spec.name          = "card_validation"
  spec.version       = CardValidation::VERSION
  spec.authors       = ["Ash Phythian"]
  spec.email         = ["ashley.phythian@onthebeach.co.uk"]

  spec.summary       = "Validates and generates card numbers based on the Luhn algorithm"
  spec.description   = "The generated numbers can be made valid or invalid."
  spec.homepage      = "https://github.otbeach.com/ashley-phythian/card_validation"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
