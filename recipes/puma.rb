#
# Cookbook Name:: puma-nginx
# Recipe:: puma
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

template "/etc/init/puma-manager.conf" do
  source 'puma-manager.conf.erb'
  mode '0444'
end

template "/etc/init/puma.conf" do
  source 'puma.conf.erb'
  mode '0444'
end

template "/etc/puma.conf" do
  source 'app.puma.conf.erb'
  mode '0444'
end