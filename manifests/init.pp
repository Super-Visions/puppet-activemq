#
# == Class: activemq
#
# The activemq class manges the activemq.conf file based on data stored in hiera
#
# === Parameters
#
# This class does not take parameters as all parameters are fetched via hiera
# The parameter defaults are stored in the activemq::data class
#
# === Variables
#
# No variables are used in the activemq base class
#
# === Examples
#
#  class { activemq: }
#
# === Authors
#
# Stefan Goethals <stefan.goethals@super-visions.com>
#
# === Copyright
#
# Copyright 2012 Super-Visions, unless otherwise noted.
#
class activemq (
  $package    = hiera( 'activemq::package', $activemq::data::package ),
  $service    = hiera( 'activemq::service', $activemq::data::service ),
  $config_dir = hiera( 'activemq::config_dir', $activemq::data::config_dir ),
  $user       = hiera( 'activemq::user', $activemq::data::user ),
  $group      = hiera( 'activemq::group', $activemq::data::group ),
  $users      = hiera( 'activemq::users', $activemq::data::users ),
  $admin_user = hiera( 'activemq::admin_user', $activemq::data::admin_user ),
  $admin_pass = hiera( 'activemq::admin_pass', $activemq::data::admin_pass ),
  $main_user  = hiera( 'activemq::main_user', $activemq::data::main_user ),
  $main_pass  = hiera( 'activemq::main_pass', $activemq::data::main_pass ),

) inherits activemq::data
{
  anchor { 'activemq::start': }->
  class { 'activemq::package': }->
  class { 'activemq::config': }~>
  class { 'activemq::service': }->
  anchor { 'activemq::end': }
}
