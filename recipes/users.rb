#
# Cookbook Name:: puma-nginx
# Recipe:: users
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

deploy_user_home = '/home/deploy'

user 'deploy' do
  comment 'User for deployments'
  home deploy_user_home
  shell '/bin/bash'
  supports manage_home: true
end

directory "#{deploy_user_home}/.ssh" do
  owner 'deploy'
  group 'deploy'
  mode '0700'
end

template "#{deploy_user_home}/.ssh/authorized_keys" do
  source 'authorized_keys.erb'
  owner 'deploy'
  group 'deploy'
  mode '0600'
end

# TODO add deploy to the sudoers group?