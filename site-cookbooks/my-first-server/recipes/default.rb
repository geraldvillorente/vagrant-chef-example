include_recipe "apache2"
apache_site 'default'

template "index.html" do
  path "/var/www/index.html"

  owner node['apache']['user']
  group node['apache']['group']

  variables( :title => "Hello from a chef template" )
end
