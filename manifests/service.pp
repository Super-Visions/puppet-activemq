#
# == Class: activemq::service
#
# The activemq::service starts, stops or restarts the activemq service as needed.
#
# === Parameters
#
#   The defaults are fetched via hiera from activemq::data.
#   They can also be set in any other hiera data file.
#
# [*activemq_service*]
#   The service name to use.
#
# === Variables
#
# No variables are used in the activemq base class
#
# === Examples
#
#  class { 'activemq::service': }
#
# === Authors
#
# Stefan Goethals <stefan.goethals@super-visions.com>
#
# === Copyright
#
# Copyright 2012 Super-Visions, unless otherwise noted.
#
class activemq::service
{
  service { $::activemq::service:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
