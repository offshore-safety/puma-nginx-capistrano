#
# Cookbook Name:: puma-nginx
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'apt::default'

include_recipe 'puma-nginx::users'

include_recipe 'puma-nginx::ruby'

include_recipe 'puma-nginx::nginx'

include_recipe 'puma-nginx::puma'

include_recipe 'puma-nginx::ntp'

include_recipe 'puma-nginx::sql_server'

include_recipe 'puma-nginx::config'

include_recipe 'puma-nginx::js_runtime'