#
# Cookbook Name:: puma-nginx
# Recipe:: config
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

user_home = "/home/deploy"
apps_home = "#{user_home}/apps"
app_directory = "#{apps_home}/#{node[:app][:name]}"
shared_directory = "#{app_directory}/shared"

[apps_home, app_directory, shared_directory].each do |dir|
  directory dir do
    owner 'deploy'
    group 'deploy'
    mode '0775'
  end
end

# Template the .env file for dot-env integration
template "#{shared_directory}/.env" do
  source '.env.erb'
  owner 'deploy'
  group 'deploy'
  mode '0444'
end