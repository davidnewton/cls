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
class { 'java':
  distribution => 'jdk',
  version      => '1.7.0_21',
}
