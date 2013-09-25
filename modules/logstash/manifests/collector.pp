logstash::input::tcp { 'logstash-tcp':
   type => 'tcp',
   port => '3366',
 }
logstash::output::file { 'logstash-file':
   type => 'file',
   path => '/tmp/tmp.txt',
 }
