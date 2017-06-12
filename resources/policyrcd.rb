resource_name :policyrcd

property :exit_code, Integer, required: true

action :create do
  template ::File.join(node['devopsdance-policyrcd']['dir'], name) do
    source 'policyrcd.service.erb'
    cookbook 'devopsdance-policyrcd'
    owner 'root'
    group 'root'
    mode '0644'
    variables exit_code: exit_code
    action :create
  end
end

action :delete do
  file ::File.join(node['devopsdance-policyrcd']['dir'], name) do
    action :delete
  end
end
