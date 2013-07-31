# Class: python_pip
#
# This class installs python_pip
#
# Actions:
#   - Install the python_pip package
#
# Sample Usage:
#  class { 'python_pip': }
#
class python_pip {

  $packages = ['build-essential', "linux-headers-${kernelrelease}", 'python-dev']

  package { $packages:
  	ensure => present,
  }

  package { 'python_pip':
    ensure  => present,
    require => Package[$packages],
  }
}