# == Class: php::pecl::igbinary::package
#
# Install the PHP igbinary extension
#
# === Parameters
#
# [*version*]
#   The version of igbinary to install
#   Could be "latest", "installed" or a pinned verison
#
# [*package*]
#   The package name for igbinary
#   For debian it's php5-igbinary
#
# [*provider*]
#   The provider used to install php5-igbinary
#   Could be "pecl", "apt" or any other OS package provider
#
# === Variables
#
# No variables
#
# === Examples
#
#  include 'php::pecl::igbinary::package'
#
#  class {'php::pecl::igbinary::package':
#   version => latest
#  }
#
# === Authors
#
# Christian Winther <cw@nodes.dk>
#
# === Copyright
#
# Copyright 2012-2013 Nodes, unless otherwise noted.
#
class php::pecl::igbinary::package(
  $version  = $php::pecl::igbinary::params::version,
  $package  = $php::pecl::igbinary::params::package,
  $provider = $php::pecl::igbinary::params::provider
) inherits php::pecl::igbinary::params {

  php::pecl::package { 'igbinary':
    version  => $version,
    package  => $package,
    provider => $provider
  }

}
