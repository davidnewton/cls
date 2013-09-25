node 'log-01' {
  include puppet
  import 'java.pp'
  import 'elasticsearch.pp'
}
node 'log-02' {
  include puppet
  import 'java.pp'
  import 'elasticsearch.pp'
  import 'collector.pp'

}
node 'log-03' {
  include puppet
  import 'java.pp'
}

