
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

  logstash::output::elasticsearch_river { 'logstash-esr':
   instances => [ 'collector' ],
   type => 'udp',
   es_host => 'elasticsearch',
   rabbitmq_host => $hostname,
   rabbitmq_port => '5672',
  }

class { '::rabbitmq'
  port              => '5672',
  delete_guest_user => false,
  default_user      => 'guest',
  default_pass      => 'guest',
}
