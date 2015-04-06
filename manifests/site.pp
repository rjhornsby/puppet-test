$version = '5.0.3'
$product1 = 'universalforwarder'
$platform = 'linux'
$product2 = 'splunkforwarder'
$build = '163460'
$splunk_os = '2.6-x86_64'
$format = 'rpm'

class { 'ntp':
	servers => ['time.apple.com'],
}

class { 'splunk':	
	install => 'forwarder',
	install_source => "http://download.splunk.com/products/splunk/releases/$version/$product1/$platform/$product2-$version-$build-$platform-$splunk_os.$format",
	forward_server => ['splunk.localhost.localdomain:9997'],
}

class { 'netbackup':
	servers => ['server01', 'server02', 'server03'],
}

#include basicpkgs	
include splunk
include netbackup
