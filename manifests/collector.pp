
  class { 'logstash':   
   provider       => 'custom',
   jarfile        => 'puppet:///modules/logstash/logstash-1.2.1-flatjar.jar',
   instances      => [ 'collector', 'shipper' ],
  }
  file { '/etc/logstash/files/patterns':
    ensure => "directory",
    mode   => '0755',  
  }
  
  file { '/etc/logstash/files/patterns/extra-patterns':
    source => 'puppet:///modules/logstash/extra-patterns',
    mode   => '0755',
  }

  logstash::input::udp { 'logstash-udp':
   instances => [ 'collector' ],
   type => 'udp',
   port => '514',
  }

  logstash::filter::grok { 'logstash-grok':
    instances    => [ 'collector' ],
    type         => 'udp',
    patterns_dir => [ '/etc/logstash/files/patterns' ],
    pattern      => [ '<%{INT:syslog_priority}>%{SYSLOGTSPIX:syslog_timestamp}:%{GREEDYDATA:syslog_hostname}: %{GREEDYDATA:syslog_message}' ],
    add_tag      => [ 'syslog' ],
  }    

  logstash::output::elasticsearch { 'logstash-es':
   instances => [ 'collector' ],
   type => 'udp',
   host => 'log-01.datacentre.esendex.com',
  }
