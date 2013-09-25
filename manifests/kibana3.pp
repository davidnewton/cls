class { 'kibana3':
  elasticsearch_host  => '127.0.0.1',
  elasticsearch_index => 'logstash-%Y.%m.%d',
  elasticsearch_port  => '9200',
}
