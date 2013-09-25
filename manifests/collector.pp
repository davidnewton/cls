  class { 'logstash':   
   provider       => 'custom',
   jarfile        => 'puppet:///modules/logstash/logstash-1.2.1-flatjar.jar',
   instances      => [ 'collector', 'shipper' ],
  }
  logstash::input::tcp { 'logstash-tcp':
   instances => [ 'collector' ],
   type => 'tcp',
   port => '3366',
  }

  logstash::output::elasticsearch_river { 'logstash-esr':
   pkg_source => 'puppet:///modules/elasticsearch/elasticsearch-0.90.5.deb',
   instances => [ 'collector' ],
   type => 'udp',
   es_host => 'log-01',
   rabbitmq_host => 'log-02',
   rabbitmq_port => '5672',
  }

class { '::rabbitmq':
  port              => '5672',
  delete_guest_user => true,
}
