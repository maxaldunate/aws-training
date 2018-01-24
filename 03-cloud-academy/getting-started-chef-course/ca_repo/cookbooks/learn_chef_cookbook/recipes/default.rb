#
# Cookbook:: learn_chef_cookbook
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
apache = value_for_platform_family(
	['rhel','fedora','suse'] => 'httpd',
	'debian' => 'apache2'
)

package apache

file '/var/www/html/index.html' do
  content '<html>Coming Soon!</html>'
end

service apache do
	action [:enable, :start]
end