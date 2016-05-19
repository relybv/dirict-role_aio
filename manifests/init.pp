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
#  include ::profile_base
#  include ::profile_apache
#  include ::profile_mysql
#  include ::profile_nfs
#  include ::profile_rsyslog

  contain profile_base
  contain profile_rsyslog
  contain profile_mysql
  contain profile_nfs
  contain profile_apache

  Class['profile_base' ] ->
  Class['profile_rsyslog' ] ->
  Class['profile_mysql' ] ->
  Class['profile_nfs' ] ->
  Class['profile_apache' ]

}
