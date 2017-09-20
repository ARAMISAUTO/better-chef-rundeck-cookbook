name 'better-chef-rundeck'
maintainer 'Aramisauto'
maintainer_email 'opensource@aramisauto.com'
license 'Apache-2.0'
description 'Installs/Configures better-chef-rundeck'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

# Recipes
recipe 'better-chef-rundeck', 'Installs and configures the better-chef-client application'
recipe 'better-chef-rundeck::passenger_standalone', 'Installs Passenger standalone and uses it to run the better-chef-client-application'

# Supported platforms
supports 'ubuntu', '>= 16.04'
supports 'debian', '>= 8.0'

# Dependencies
depends 'apt', '~> 6.1.4'
depends 'git', '~> 8.0.0'
depends 'poise-ruby', '~> 2.3.0'
depends 'poise-service', '~> 1.5.2'

issues_url 'https://github.com/ARAMISAUTO/better-chef-rundeck-cookbook/issues'
source_url 'https://github.com/ARAMISAUTO/better-chef-rundeck-cookbook'
chef_version '>= 12.1' if respond_to?(:chef_version)