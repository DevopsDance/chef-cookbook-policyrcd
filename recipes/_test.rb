include_recipe 'devopsdance-policyrcd::default' # ~FC007

policyrcd 'apache2' do
  exit_code 101
  action :create
end
