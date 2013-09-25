class { 'elasticsearch':
  pkg_source => 'puppet:///modules/elasticsearch/elasticsearch-0.90.5.deb',
  config => {
    'node' => {
      'name' => 'es-01',
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
