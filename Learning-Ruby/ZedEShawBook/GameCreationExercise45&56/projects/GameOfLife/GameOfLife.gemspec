# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "GameOfLife"
  spec.version       = '1.0'
  spec.authors       = ["Medha Sawhney"]
  spec.email         = ["sawhney.medha@gmail.com"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/GameOfLife.rb']
  spec.executables   = ['bin/GameOfLife']
  spec.test_files    = ['tests/test_GameOfLife.rb']
  spec.require_paths = ["lib"]
end
