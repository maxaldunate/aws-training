name 'web_app'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures web_app'
long_description 'Installs/Configures web_app'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/web_app/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/web_app'

# These will be installed with Berkshelf
depends 'mysql', '= 7.0.0'
depends 'mysql2_chef_gem', '~> 1.1.0'
depends 'database', '~> 6.1.1'
depends 'poise-python', '~> 1.5.1'
depends 'apache2', '~> 3.2.2'