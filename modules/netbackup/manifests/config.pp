class netbackup::config inherits netbackup {
	file {'/usr/openv':
		ensure => 'directory',
		owner => 'root',
		group => 'bin',
		mode => 755,
	}
	file { '/usr/openv/netbackup':
		ensure => 'directory',
		owner => 'root',
		group => 'bin',
		mode => 755,
		require => File['/usr/openv'],
	}
	file { 'bp.conf':
		path 	=> '/usr/openv/netbackup/bp.conf',
		ensure 	=> file,
		content => template("netbackup/bp.conf.erb"), 
		owner => 'root',
		group => 'root',
		mode => 644,
		require => File['/usr/openv/netbackup'],
	}
}
