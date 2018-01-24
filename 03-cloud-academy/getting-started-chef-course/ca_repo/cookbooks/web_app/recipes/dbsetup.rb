# Install the MySQL client and server

# MySQL client setup
mysql_client 'default' do
  action :create
end

password = '94nfsUl7'

# Make sure the MySQL service exists and is running
mysql_service 'default' do
  bind_address '127.0.0.1'
  port '3306'
  data_dir '/data'
  initial_root_password password
  socket '/var/run/mysqld/mysqld.sock' if platform_family?('debian')
  socket '/var/lib/mysql/mysql.sock' if platform_family?('rhel', 'fedora', 'suse')
  action [:create, :start]
end

mysql2_chef_gem 'default' do
  action :install
end


conn = {
  :host => '127.0.0.1',
  :username => 'root',
  :password => password
}

# Create the database instance.
mysql_database 'appdata' do
  connection conn
  action :create
end

mysql_database_user 'appuser' do
  connection conn
  password   password
  action     [:create, :grant]
end