include_recipe "apache2"
apache_site 'default'

cookbook_file "index.html" do
  path "/var/www/index.html"

  owner node['apache']['user']
  group node['apache']['group']
end
