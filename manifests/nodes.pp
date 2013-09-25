node 'log-01.datacentre.esendex.com' {
  include puppet
  import 'elasticsearch.pp'
  import 'kibana3.pp'
}
node 'log-02.datacentre.esendex.com' {
  include puppet
  import 'elasticsearch.pp'
  import 'collector.pp'
  import 'kibana3.pp'
}
