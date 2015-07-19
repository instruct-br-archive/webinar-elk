class kibana ($kibana_version = '4.1.1') {

  staging::deploy { "kibana-${kibana_version}-linux-x64.tar.gz":
    source => "https://download.elastic.co/kibana/kibana/kibana-${kibana_version}-linux-x64.tar.gz",
    target => '/opt',
    before => User['kibana'],
  }

  user {'kibana':
    ensure => present,
    shell  => '/bin/false',
    before => [File['kibana.service'], Service['kibana']],
  }

  file {'kibana.service':
    path   => '/usr/lib/systemd/system/kibana.service',
    ensure => file,
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/kibana/kibana.service',
  }

  ~>

  service {'kibana':
    ensure => running,
    enable => true,
  }

}
