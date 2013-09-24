class logstash {
  file {"/opt/logstash-1.2.1-flatjar.jar":
    source => "puppet:///modules/logstash/logstash-1.2.1-flatjar.jar",
    ensure => present
  }
 
  file {"/etc/init.d/logstash":
    source => "puppet:///modules/logstash/logstash",
    ensure => present,
    mode => 0755,
    owner => root,
    group => root
  }
 
  file {"/etc/logstash.conf":
    source => "puppet:///modules/logstash/logstash.conf",
    ensure => present,
    replace => false
  }
 
  service {"logstash":
    ensure => running,
    subscribe => File["/etc/logstash.conf"],
    require => [
      File["/etc/init.d/logstash"],
      File["/etc/logstash.conf"],
      File["/opt/logstash-1.2.1-flatjar.jar"]
    ]
  }
}