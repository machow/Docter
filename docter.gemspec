# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docter/version'

Gem::Specification.new do |gem|
  gem.name          = "docter"
  gem.version       = Docter::VERSION
  gem.authors       = ["Aaron Lampros", "Suan-Aik Yeo"]
  gem.email         = ["alampros@gmail.com", "syeo@enova.com"]
  gem.description   = %q{Use github's own redcarpet library to provide accurate markdown previews}
  gem.summary       = %q{Redcarpet markdown parser}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'redcarpet'
  gem.add_runtime_dependency 'pygments.rb'
end
