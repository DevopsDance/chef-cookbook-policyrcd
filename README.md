[![CircleCI](https://circleci.com/gh/DevopsDance/chef-cookbook-dnsmasq.svg?style=svg)](https://circleci.com/gh/DevopsDance/chef-cookbook-dnsmasq)

# chef-cookbook-policyrcd

DUMMY policy-rc.d management.

## Requirements

Chef `~> 12` or `~> 13` is required. Otherwise provision will fail.

## Recipes
### default

Sets and installs scripts and directory. It's mandatory to include this recipe
before using `policyrcd` resource.

## Attributes

- `default['devopsdance-policyrcd']['dir']` Configuration directory path. It's
  a place where all service policies are kept.

## Resources
### dnsmasq_conf

*Actions*

- `:create` (default action) Creates new configuration.
- `:delete` Removes given configuration.

*Parameters*

- `exit_code`

*Examples*

```
include_recipe 'devopsdance-policyrcd::default'

policyrcd 'apache2' do
  exit_code 101
  action :create
end
```
