# Class: nginx::package::gentoo
#
# This module manages NGINX package installation on gentoo systems
#
# Parameters:
#
# There are no default parameters for this class.
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# This class file is not called directly
class nginx::package::gentoo(
    $package_name   = 'www-servers/nginx',
    $package_ensure = 'present'
  ) {
  
  if $caller_module_name != $module_name {
    warning("${name} is deprecated as a public API of the ${module_name} module and should no longer be directly included in the manifest.")
  }
  
  package { $package_name:
    ensure  => $package_ensure
  }
}
