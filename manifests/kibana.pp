 class { 'kibana':
    es_host  => 'log-01',
    es_port => '9200',
    logstash  => 'false',
  }
