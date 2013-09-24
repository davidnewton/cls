node 'log-01' {
  include puppet
  include java
  include logstash
}
node 'log-02' {
  include puppet
}
