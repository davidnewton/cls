node 'log-01.datacentre.esendex.com' {
  include puppet
  import 'java.pp'
  import 'elasticsearch.pp'
}
node 'log-02.datacentre.esendex.com' {
  include puppet
  import 'java.pp'
  import 'elasticsearch.pp'
  import 'collector.pp'

}
node 'log-03.datacentre.esendex.com' {
  include puppet
  import 'java.pp'
}

