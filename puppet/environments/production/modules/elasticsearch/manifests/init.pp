class elasticsearch {

  yumrepo { 'elasticsearch-1.7':
    ensure     => 'present',
    descr      => 'Elasticsearch repository for 1.7.x packages',
    gpgcheck   => '1',
    enabled    => '1',
    gpgkey     => 'http://packages.elastic.co/GPG-KEY-elasticsearch',
    baseurl    => 'http://packages.elastic.co/elasticsearch/1.7/centos',
  }

  ->

  package {'elasticsearch':
    ensure => installed,
  }

  ->

  service {'elasticsearch':
    ensure => running,
    enable => true,
  }


}
