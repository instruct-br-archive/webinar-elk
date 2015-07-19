class logstash {

  yumrepo { 'logstash-1.5':
    ensure     => 'present',
    descr      => 'Logstash repository for 1.5.x packages',
    gpgcheck   => '1',
    enabled    => '1',
    gpgkey     => 'http://packages.elastic.co/GPG-KEY-elastisearch',
    baseurl    => 'http://packages.elastic.co/logstash/1.5/centos',
  }

  ->

  package {'logstash':
    ensure  => installed,
  }

  ->

  file {'/etc/logstash/conf.d/central.conf':
    ensure => file,
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/logstash/central.conf',
  }

  ~>

  service {'logstash':
    ensure => running,
    enable => true,
  }



}
