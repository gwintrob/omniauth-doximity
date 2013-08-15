# -*- encoding: utf-8 -*-
require File.dirname(__FILE__) + '/lib/omniauth-doximity/version'

Gem::Specification.new do |gem|
  gem.add_runtime_dependency 'omniauth', '~> 1.1'

  gem.name          = 'omniauth-doximity'
  gem.version       = OmniAuth::Doximity::VERSION
  gem.authors       = ['Gordon Wintrob']
  gem.email         = ['gwintrob@gmail.com']
  gem.summary       = %q{Doximity strategy for OmniAuth}
  gem.description       = %q{Doximity OAuth2 Strategy for OmniAuth 1.0}
  gem.homepage      = 'https://github.com/gwintrob/omniauth-doximity'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
