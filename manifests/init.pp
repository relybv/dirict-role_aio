# == Class: role_aio
#
# Full description of class role_aio here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class role_aio
{
  # a role includes one or more profiles and at least a 'base' profile
  stage{ 'first': }
  stage{ 'second': }
  Stage[first]->Stage[second]

  class { 'profile_nfs': stage => first, }
  class { 'profile_nfs::rspec_monitor': stage => first, }
  class { 'profile_base': stage => second, }
  class { 'profile_base::rspec_monitor': stage => second, }
  class { 'profile_rsyslog': stage => second, }
  class { 'profile_rsyslog::rspec_monitor': stage => second, }
  class { 'profile_mysql': stage => second, }
  class { 'profile_mysql::rspec_monitor': stage => second, }
  class { 'profile_apache': stage => second, }
  class { 'profile_apache::rspec_monitor': stage => second, }

}
