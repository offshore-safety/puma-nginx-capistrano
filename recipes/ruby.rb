#
# Cookbook Name:: puma-nginx
# Recipe:: ruby
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

apt_repository 'brightbox-ruby' do
  uri   'ppa:brightbox/ruby-ng'
  distribution 'trusty'
end

package "ruby#{node[:ruby]}"

package "ruby#{node[:ruby]}-dev"

execute 'install Bundler' do
  command 'gem install bundler'
end
