
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tidyhqrb/version"

Gem::Specification.new do |spec|
  spec.name          = "tidyhqrb"
  spec.version       = Tidyhqrb::VERSION
  spec.authors       = ["Fabio Vilela"]
  spec.email         = ["fbvilela@gmail.com"]

  spec.summary       = %q{A ruby wrapper around the tidyhq.com api.}
  spec.description   = %q{A ruby wrapper around the tidyhq.com api.}
  spec.homepage      = "https://github.com/fbvilela/tidyhqrb"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir['lib/**/*.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'restroom'
  spec.add_dependency 'faraday', '0.9.0'
  spec.add_dependency 'virtus'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
