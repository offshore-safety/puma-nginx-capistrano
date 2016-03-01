#
# Cookbook Name:: puma-nginx
# Recipe:: redis
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'redis-server'

template "/etc/redis/redis.conf" do
  source 'redis.conf.erb'
  mode '0444'
end
