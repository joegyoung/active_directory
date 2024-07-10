require File.expand_path('../lib/active_directory/version.rb', __FILE__)
require "Date"

Gem::Specification.new do |s|
  s.name = 'active_directory'
  s.license = 'GPL-3.0'
  s.version = ActiveDirectory::VERSION
  s.date = Date.today.to_s
  s.summary = "An interface library for accessing Microsoft's Active Directory."
  s.description = <<-DESC
  ActiveDirectory uses Net::LDAP to provide a means of accessing
  and modifying an Active Directory data store.
  This is a fork of the activedirectory gem.
  DESC
  s.authors = ['Joe Young']
  s.email = 'joegyoung@the-cyberian.com'
  s.homepage = 'http://github.com/joegyoung/active_directory'

  s.files = Dir['lib/**/*', 'README*', 'LICENSE*', 'VERSION*']
  s.extra_rdoc_files = [
    'README.md'
  ]

  s.required_ruby_version = '~> 4'
  s.add_dependency 'net-ldap', '~> ">= 0.1.1'
  s.add_dependency 'bindata', '~> 2'

  s.add_development_dependency 'minitest', '~> 5'
end
