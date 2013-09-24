class puppet {
  file { '/usr/local/bin/papply':
    source => 'puppet:///modules/puppet/papply.sh',
    mode   => '0755',
  }
  file { '/usr/local/bin/pull-updates':
    source => 'puppet:///modules/puppet/pull-updates.sh',
    mode   => '0755',
  }
  file { '/home/logadmin/.ssh/id_rsa':
    source => 'puppet:///modules/puppet/logadmin.priv',
    owner  => 'logadmin',
    mode   => '0600',
  }
}
