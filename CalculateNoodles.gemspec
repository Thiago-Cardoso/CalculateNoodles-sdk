
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "CalculateNoodles/version"

Gem::Specification.new do |spec|
  spec.name          = "CalculateNoodles"
  spec.version       = CalculateNoodles::VERSION
  spec.authors       = ["thiagocardosoti"]
  spec.email         = ["thiagocardosooti@gmail.com"]

  spec.summary       = 'CalculateNoodels'
  spec.description   = 'Calculation of cooking time for instant noodles problem'
  spec.homepage      = 'http://site.com.br'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.0'
end
