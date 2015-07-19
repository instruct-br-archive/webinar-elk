class rsyslog {

  file {'/etc/rsyslog.conf':
    ensure => file,
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/rsyslog/rsyslog.conf'
  }

  ~>

  service {'rsyslog':
    ensure => running,
    enable => true,
  }

}
