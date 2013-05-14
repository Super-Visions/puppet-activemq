#
# == Class: activemq::config
#
# The activemq::config class takes care of creating the activemq.conf file
# and putting it in the correct place on the filesystem
#
# === Parameters
#
#   The defaults are fetched via hiera from activemq::data.
#   They can also be set in any other hiera data file.
#
# [*user*]
#   The user that must be owner of the file.
#
# [*group*]
#   The group that must be owner of the file.
#
# [*config_dir*]
#   The directory that must contain the file.
#
# [*servers*]
#   List of activemq servers.
#
# [*options*]
#   Options string to append to each server line.
#
# [*extra_opts*]
#   Extra options to add at the end of the file.
#
# === Variables
#
# No variables are used in the activemq base class
#
# === Examples
#
#  class { 'activemq::config': }
#
# === Authors
#
# Stefan Goethals <stefan.goethals@super-visions.com>
#
# === Copyright
#
# Copyright 2012 Super-Visions, unless otherwise noted.
#
class activemq::config
{
  file { "${::activemq::config_dir}/activemq.xml":
    ensure  => present,
    content => template("${module_name}/activemq.xml.erb"),
    owner   => $::activemq::user,
    group   => $::activemq::group,
    mode    => '0644',
  }
}
