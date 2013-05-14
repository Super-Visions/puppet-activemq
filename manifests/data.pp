#
# == Class: activemq::data
#
# The activemq::data class holds the defaults for all
# variables and parameters used in the activemq class.
#
# === Parameters
#
# This class does not take parameters.
#
# === Variables
#
# [*package*]
#   Default activemq package name.
#
# [*service*]
#   Default activemq service name.
#
# [*config_dir*]
#   Default activemq config dir.
#
# [*user*]
#   Default activemq user name.
#
# [*group*]
#   Default activemq group name.
#
# === Examples
#
#  class { 'activemq::data': }
#
# === Authors
#
# Stefan Goethals <stefan.goethals@super-visions.com>
#
# === Copyright
#
# Copyright 2012 Super-Visions, unless otherwise noted.
#
class activemq::data {

  $users = [] 
  $admin_user = 'admin'
  $admin_pass = 's3cr3t'
  $main_user  = 'mcollective'
  $main_pass  = 'mc0ll3ct1v3'

  case $::operatingsystem
  {
    ubuntu, debian: {
      $package    = 'activemq'
      $service    = 'activemq'
      $config_dir = '/etc/activemq'
      $user       = 'root'
      $group      = 'root'
    }
    centos, redhat: {
      $package    = 'activemq'
      $service    = 'activemq'
      $config_dir = '/etc/activemq'
      $user       = 'root'
      $group      = 'root'
    }
    Solaris: {
      $package    = 'activemq'
      $service    = 'activemq'
      $config_dir = '/etc/activemq'
      $user       = 'root'
      $group      = 'root'
    }
    default:
    {
      fail("Unknown OS: $::operatingsystem")
    }
  }
}
