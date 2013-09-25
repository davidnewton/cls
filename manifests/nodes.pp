node 'log-01.datacentre.esendex.com' {
  include puppet
  import 'es-01.pp'
}
node 'log-02.datacentre.esendex.com' {
  include puppet
  import 'collector.pp'
}
