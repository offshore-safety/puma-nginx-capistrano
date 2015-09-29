#
# Cookbook Name:: puma-nginx
# Recipe:: ruby
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'ruby_build'
include_recipe 'rbenv::system'

rbenv_global node[:rbenv][:rubies].first

rbenv_gem 'bundler'