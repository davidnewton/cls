node 'log-01' {
  include puppet
  import 'es-01.pp'
}
node 'log-02' {
  include puppet
  import 'collector.pp'
}
