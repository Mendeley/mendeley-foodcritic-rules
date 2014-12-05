lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'mendeley-foodcritic-rules'
  spec.version       = '0.0.5'
  spec.authors       = ["Benjamin M. A'Lee"]
  spec.email         = ['bma@mendeley.com']
  spec.description   = 'Custom foodcritic rules that are used at Mendeley.'
  spec.summary       = 'Custom foodcritic rules that are used at Mendeley.'
  spec.homepage      = 'https://github.com/mendeley/mendeley-foodcritic-rules'
  spec.license       = 'Apache'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 1.9.2'

  spec.add_dependency 'foodcritic', '~> 4.0'

  spec.add_development_dependency 'bundler'
end
