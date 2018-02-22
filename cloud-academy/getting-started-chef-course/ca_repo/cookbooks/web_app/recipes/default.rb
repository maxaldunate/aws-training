#
# Cookbook:: web_app
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_update 'all platforms'  do
	frequency 86400
	action :periodic
end

include_recipe 'web_app::apache'
include_recipe 'web_app::dpsetup'
include_recipe 'web_app::app'
