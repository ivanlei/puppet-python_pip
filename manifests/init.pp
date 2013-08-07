# == Class: python_pip
#
# Installs python_pip
#
# === Example
#  class { 'python_pip': }
#
class python_pip {

  $packages = ['build-essential', "linux-headers-${kernelrelease}", 'python-dev']

  package { $packages:
    ensure => present,
  }

  package { 'python-pip':
    ensure  => present,
    require => Package[$packages],
  }
}