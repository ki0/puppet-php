# Class: php::pear
#
# Installs Pear for PHP module
#
# Usage:
# include php::pear
#
# == Parameters
#
# Standard class parameters
# Define the general class behaviour and customizations
#
# [*package*]
#   Name of the package to install. Defaults to 'php-pear'
#
# [*install_package*]
#   Boolean. Determines if any package should be installed to support the PEAR functionality.
#   Can be false if PEAR was already provided by another package or module.
#   Default: true
#
class php::pear (
  $package = "php-pear",
  $install_package = true
  ) {

  include php

  if ( $install_package ) {
    package { php-pear:
      name   => $package,
      ensure => present,
    }
  }

}
