lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "method_definition/version"

Gem::Specification.new do |spec|
  spec.name          = "method_definition"
  spec.version       = MethodDefinition::VERSION
  spec.authors       = ["nishisuke"]
  spec.email         = ["ryoskns+git@gmail.com"]

  spec.summary       = %q{add Method#definition}
  spec.description   = %q{get definition from method object}
  spec.homepage      = "https://github.com/nishisuke/ruby_method_definition"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nishisuke/ruby_method_definition"
  spec.metadata["changelog_uri"] = "https://github.com/nishisuke/ruby_method_definition/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
