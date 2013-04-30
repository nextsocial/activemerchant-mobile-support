$:.push File.expand_path("../lib", __FILE__)

require 'active_merchant/version'

Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'activemerchant'
  s.version      = ActiveMerchant::VERSION
  s.summary      = 'Payment processing framework and tools, based on ActiveMerchant'
  s.description  = ''

  s.author = 'Mircea Preotu'
  s.email = 'mircea.preotu@gmail.com'
  s.homepage = 'http://activemerchant.org/'
  s.rubyforge_project = 'activemerchant'

  s.files = Dir['CHANGELOG', 'README.md', 'MIT-LICENSE', 'CONTRIBUTORS', 'lib/**/*', 'vendor/**/*']
  s.require_path = 'lib'

  s.has_rdoc = true if Gem::VERSION < '1.7.0'

  s.add_dependency('activesupport', '>= 2.3.14')
  s.add_dependency('i18n')
  s.add_dependency('money')
  s.add_dependency('builder', '>= 2.0.0')
  s.add_dependency('json', '>= 1.5.1')
  s.add_dependency('active_utils', '>= 1.0.2')
  s.add_dependency('nokogiri')

  s.add_development_dependency('rake')
  s.add_development_dependency('mocha', '~> 0.11.3')
  s.add_development_dependency('rails', '>= 2.3.14')
  s.add_development_dependency('thor')
  #s.signing_key = ENV['GEM_PRIVATE_KEY']
  #s.cert_chain  = ['gem-public_cert.pem']
end
