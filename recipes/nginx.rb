#
# Cookbook Name:: puma-nginx
# Recipe:: nginx
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'nginx'

file '/etc/nginx/sites-enabled/default' do
  action :delete
end

template "/etc/nginx/sites-enabled/#{node[:app][:name]}" do
  source 'nginx.conf.erb'
  owner 'deploy'
  group 'deploy'
  mode '0444'
end

service 'nginx' do
  action :restart
end