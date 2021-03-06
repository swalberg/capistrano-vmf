# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "capistrano-vmf"
  spec.version       = "1.0.2"
  spec.authors       = ["Sean Walberg"]
  spec.email         = ["sean@ertw.com"]
  spec.description   = %q{Some capistrano automation to handle apps deployed to VM Farms}
  spec.summary       = %q{Some capistrano automation to handle apps deployed to VM Farms}
  spec.homepage      = "https://github.com/swalberg/capistrano-vmf"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "capistrano", "~> 3.0"
  spec.add_dependency "rvm1-capistrano3"
end
