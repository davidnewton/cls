
  class { 'logstash':   
   provider       => 'custom',
   jarfile        => 'puppet:///modules/logstash/logstash-1.2.1-flatjar.jar',
   instances      => [ 'collector', 'shipper' ],
  }
  logstash::input::udp { 'logstash-udp':
   instances => [ 'collector' ],
   type => 'udp',
   port => '514',
  }

  logstash::output::elasticsearch { 'logstash-es':
   instances => [ 'collector' ],
   type => 'udp',
   host => 'log-01.datacentre.esendex.com',
  }
