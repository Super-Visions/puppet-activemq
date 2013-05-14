#
# == Class: activemq::package
#
# The activemq::package class takes care of installing the activemq package as needed
#
# === Parameters
#
#   The defaults are fetched via hiera from activemq::data.
#   They can also be set in any other hiera data file.
#
# [*package_name*]
#   This parameter specifies the name of the package to install.
#
# === Variables
#
# No variables are used in the activemq base class
#
# === Examples
#
#  class { 'activemq::package': }
#
# === Authors
#
# Stefan Goethals <stefan.goethals@super-visions.com>
#
# === Copyright
#
# Copyright 2012 Super-Visions, unless otherwise noted.
#
class activemq::package
{
  package { $::activemq::package:
    ensure => installed,
  }
}
