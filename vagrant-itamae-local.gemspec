# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant/itamae/local/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-itamae-local"
  spec.version       = Vagrant::Itamae::Local::VERSION
  spec.authors       = ["kakikubo teruo"]
  spec.email         = ["kakikubo@gmail.com"]

  spec.summary       = %q{useful for vagrant itamae extension.}
  spec.description   = %q{additional local option for vagrant-itamae.}
  spec.homepage      = "https://github.com/kakikubo/vagrant-itamae-local"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "vagrant-itamae", "~> 0.2.1"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
