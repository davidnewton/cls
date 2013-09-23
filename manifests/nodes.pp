node 'log-01' {
  file { '/tmp/hello':
    content => "Hello, world\n",
    }
}
