#
# Cookbook Name:: puma-nginx
# Recipe:: ntp
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'ntp'

template "/etc/ntp.conf" do
  source "ntp.conf.erb"
  owner "root"
  group "root"
  mode "0644"
end

service 'ntp' do
  action :reload
end
