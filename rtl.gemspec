# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rtl/version'

Gem::Specification.new do |spec|
  spec.name          = "rtl"
  spec.version       = Rtl::VERSION
  spec.date          = '2016-10-01'
  spec.authors       = ["Abdullah Barrak (abarrak)"]
  spec.email         = ["a@abarrak.com"]

  spec.summary       = "A gem for checking RTL direction of languages."
  spec.description   = "RTL helps you to check whether a language direction is right-to-left (RTL)
                        or left-to-right (LTR) implicitly, by supplying its full name, iso code,
                        or others options."
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
