include_recipe 'chef-sugar'

if ubuntu?
  include_recipe 'ubuntu'
elsif debian?
  include_recipe 'apt'
else
  raise 'Unsupported platform'
end

template '/usr/sbin/policy-rc.d' do
  source 'policy-rc.d.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables config: node['devopsdance-policyrcd']
  action :create
end

directory node['devopsdance-policyrcd']['dir'] do
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end
