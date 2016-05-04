#
# Cookbook Name:: puma-nginx
# Recipe:: nginx
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'nginx'

if node[:ssl]
  execute 'generate stronger DHE parameter' do
    command 'openssl dhparam -out dhparam.pem 4096'
    cwd '/etc/ssl/certs'
    not_if { ::File.exist? '/etc/ssl/certs/dhparam.pem' }
  end
end

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
