require File.expand_path('../lib/active_directory/version', __FILE__)
require 'date'

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
  s.authors = ['Simon Arnaud', 'Adam T Kerr', 'Keith Pitty', 'James Hunt']
  s.email = 'active_directory.ruby.maz@kabalo.org'
  s.homepage = 'http://github.com/mazwak/active_directory'

  s.files = Dir['lib/**/*', 'README*', 'LICENSE*', 'VERSION*']
  s.extra_rdoc_files = [
    'README.md'
  ]

  s.required_ruby_version = '~> 3'
  s.add_dependency 'net-ldap', '~> 0'
  s.add_dependency 'bindata', '~> 2'

  s.add_development_dependency 'minitest', '~> 5'
end
