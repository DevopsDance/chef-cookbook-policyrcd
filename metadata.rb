name 'devopsdance-policyrcd'
maintainer 'DevopsDance'
maintainer_email 'team@devops.dance'
license 'Apache-2.0'
description 'Installs and configures DNSMasq'
version '0.1.1'
source_url 'https://github.com/DevopsDance/chef-cookbook-policyrcd'
issues_url 'https://github.com/DevopsDance/chef-cookbook-policyrcd/issues'

chef_version '~> 12'
chef_version '~> 13'

depends 'ubuntu'
depends 'apt'
depends 'chef-sugar'

supports 'ubuntu', '>= 15.04'
supports 'debian', '>= 7.0'
