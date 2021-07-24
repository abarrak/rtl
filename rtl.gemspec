# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rtl/version'
require 'date'

Gem::Specification.new do |spec|
  spec.name          = "rtl"
  spec.version       = Rtl::VERSION
  spec.date          = Date.today.to_s
  spec.authors       = ["Abdullah Barrak (abarrak)"]
  spec.email         = ["a@abarrak.com"]

  spec.summary       = "A gem for checking RTL direction of a language."
  spec.description   = "RTL helps you to check whether a language direction is right-to-left (RTL)
                        or left-to-right (LTR) implicitly, by supplying its full name, iso code,
                        or other options."
  spec.homepage      = "https://github.com/abarrak/rtl"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2.20"
  spec.add_development_dependency "rake", "~> 13"
  spec.add_development_dependency "minitest", "~> 5"
  spec.add_development_dependency "simplecov", "~> 0.21"
end
