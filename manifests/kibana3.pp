 class { 'kibana3':
    elasticsearch_host  => 'log-01',
    elasticsearch_index => 'logstash-%Y.%m.%d',
    elasticsearch_port  => '9200',
  }
