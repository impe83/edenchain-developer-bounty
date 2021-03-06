
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "edenchain/developer/bounty/version"

Gem::Specification.new do |spec|
  spec.name          = "edenchain-developer-bounty"
  spec.version       = Edenchain::Developer::Bounty::VERSION
  spec.authors       = ["@sebler"]
  spec.email         = ["sebastian.johnsson@gmail.com"]

  spec.summary       = %q{EdenChain Developer Bounty Answers}
  spec.description   = %q{Answers to the questions posed for the EdenChain Developer Bounty Program}
  spec.homepage      = "https://github.com/SebastianJ/edenchain-developer-bounty."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "faker", "~> 1.8", ">= 1.8.7"
  spec.add_development_dependency "colorize", "~> 0.8.1"
end
