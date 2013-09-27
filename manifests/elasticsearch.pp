class { 'elasticsearch':
  pkg_source => 'puppet:///modules/elasticsearch/elasticsearch-0.90.5.deb',
  config => {
    'node' => {
      'name' => $hostname,
    },
    'index' => {
      'number_of_replicas' => '1',
      'number_of_shards' => '2',
    },
    'network' => {
      'host' => $::ipaddress
    }
  }
}


elasticsearch::plugin{'mobz/elasticsearch-head':
   module_dir => 'head'
 }
elasticsearch::plugin{'elasticsearch/elasticsearch-river-rabbitmq/1.6.0':
   module_dir => 'rmq-river'
 }
