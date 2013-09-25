rode 'log-01.datacentre.esendex.com' {
  include puppet
  import 'java.pp'
  import 'elasticsearch.pp'
  #import 'kibana.pp'
}
node 'log-02.datacentre.esendex.com' {
  include puppet
  import 'java.pp'
  import 'elasticsearch.pp'
  import 'collector.pp'
  #import 'kibana.pp'
}
node 'log-03.datacentre.esendex.com' {
  include puppet
  import 'java.pp'
  import 'kibana.pp'
}

