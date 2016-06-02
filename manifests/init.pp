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

  contain profile_base
  # include rspec monitor to make rspec acceptance test available to monitor system
  contain profile_base::rspec_monitor
  contain profile_rsyslog
  contain profile_rsyslog::rspec_monitor
  contain profile_mysql
  contain profile_mysql::rspec_monitor
  contain profile_nfs
  contain profile_nfs::rspec_monitor
  contain profile_apache
  contain profile_apache::rspec_monitor

  Class['profile_base' ] ->
  Class['profile_rsyslog' ] ->
  Class['profile_mysql' ] ->
  Class['profile_nfs' ] ->
  Class['profile_apache' ]

}
