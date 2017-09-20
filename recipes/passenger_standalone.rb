#
# Cookbook:: .
# Recipe:: passenger_standalone
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Required by Passenger APT repository
package 'apt-transport-https'

# Install Passenger repository
apt_repository 'passenger' do
  uri 'https://oss-binaries.phusionpassenger.com/apt/passenger'
  distribution 'jessie'
  components ['main']
  keyserver 'hkp://keyserver.ubuntu.com:80'
  key '561F9B9CAC40B2F7'
end

# Install Passenger
package 'passenger'

# Validate installation
execute 'passenger_validate' do
  command '/usr/bin/passenger-config validate-install --auto'
end

# Create service
poise_service_user cookbook_name()
poise_service 'better-chef-rundeck' do
  command '/usr/local/bin/bundle exec passenger start --environment production'
  directory "/srv/#{cookbook_name()}"
  action [:enable, :start]
  # Daemon must be able to read the /etc/chef/client.pem file
  user 'root'
end
