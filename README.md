puppet_python_pip
=================
A puppet module for installing python-pip.<br>
Puppet supports pip as a provider for installing packages but there's no guarantee pip is installed.  Use this module prior to making use of a pip package provider. 

usage
-----
```ruby
# Ensure pip is available
require python_pip

# Example package will be installed with pip
package { 'example':
  ensure   => present,
  provider => 'pip',
}
```
