lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "one/version"

Gem::Specification.new do |spec|
  spec.name          = "one"
  spec.version       = One::VERSION
  spec.authors       = ["Max Bigras"]
  spec.email         = ["mbigras22@gmail.com"]

  spec.summary       = %q{foo}
  spec.description   = %q{bar}
  spec.homepage      = "https://github.com/mbigras/one"
  spec.files         = %w(exe/one
                          README.md
                          features/cli.feature
                          features/support/env.rb
                          Gemfile
                          lib/one/thing.rb
                          lib/one/version.rb
                          lib/one.rb
                          Rakefile
                          test/one_test.rb
                          test/test_helper.rb
                          test/thing_test.rb)
  spec.bindir        = "exe"
  spec.executables   = %w(one)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "aruba", "~> 0.14.0"
end
