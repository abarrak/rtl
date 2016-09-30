# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rtl/version'

Gem::Specification.new do |spec|
  spec.name          = "rtl"
  spec.version       = Rtl::VERSION
  spec.authors       = ["Abdullah Barrak (abarrak)"]
  spec.email         = ["a@abarrak.com"]

  spec.summary       = %q{A gem for checking RTL direction of languages.}
  spec.description   = %q{You can supply a language name, code, or others to check whether
                          its right to left (RTL) or left to right (LTR) implicitly. }
  spec.homepage      = "https://github.com/abarrak/rtl"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
