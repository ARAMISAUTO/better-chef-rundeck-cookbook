#
# Cookbook:: better-chef-rundeck
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# https://github.com/atheiman/better-chef-rundeck

# Create dedicated user
user node['better-chef-rundeck']['user'] do
  home node['better-chef-rundeck']['install_directory']
end

# Clone sources
directory node['better-chef-rundeck']['install_directory'] do
  user node['better-chef-rundeck']['user']
  group node['better-chef-rundeck']['group']
end
git node['better-chef-rundeck']['install_directory'] do
  repository 'https://github.com/atheiman/better-chef-rundeck.git'
  revision '83f7d9bfbaaaff9e310e21788b846c6c294f0e07'
  user node['better-chef-rundeck']['user']
  group 'better-chef-rundeck'
end

# Install application dependencies
bundle_install "#{node['better-chef-rundeck']['install_directory']}/Gemfile" do
  deployment true
  without %w(development test)
  user node['better-chef-rundeck']['user']
end
