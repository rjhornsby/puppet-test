# == Class: netbackup
#
# Full description of class netbackup here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'netbackup':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class basicpkgs {
	$install_pkgs = [
		'vim-enhanced',
	 	'nc',
	#	'sysfutils',
		'glibc.i686',
		'libstdc++.i686',
	#	'compat-libstdc++.x86_64',
	#	'compat-libstdc++.i686',
		'net-snmp',
		'telnet',
		'iptraf',
	#	'iftop',
		'ksh',
	]
	$remove_pkgs = ['cups']	

	package { $install_pkgs: ensure => 'installed' }	
	package { $remove_pkgs: ensure => 'absent' }

}
