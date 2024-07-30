#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright:: 2024, The Authors, All Rights Reserved.

case node['platform_family']
    when 'rhel', 'amazon'
        package "httpd" do
            action :install
        end

        service "httpd" do
            action [:enable, :start]
        end

    when 'debian'
        apt_update 'update' do
            action :update
        end
        package "apache2" do
            action :install
        end

        service "apache2" do
            action [:enable, :start]
        end
end

template "/var/www/html/index.html" do
    source "index.html.erb"
end

# file "/var/www/html/index.html" do 
#     content "<html><body><h1>Welcome to chef-node</h1></body></html>"
#     action :create
# end