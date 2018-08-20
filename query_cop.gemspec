
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "query_cop/version"

Gem::Specification.new do |spec|
  spec.name          = "query_cop"
  spec.version       = QueryCop::VERSION
  spec.authors       = ["Wai Phyo Maung"]
  spec.email         = ["waiphyo300@gmail.com"]

  spec.summary       = "Rspec query count tracker"
  spec.description   = "Allows rails/rspec users to test against number of queries on any given action/block"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
