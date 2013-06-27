class passenger::install::debian {

  package { 'passenger':
    ensure  => installed,
    name    => 'libapache2-mod-passenger',
    notify  => Class['apache'],
  }

  # Enable RequestHeaders
  exec { 'enable-headers':
    command => '/usr/sbin/a2enmod headers',
    creates => '/etc/apache2/mods-enabled/headers.load',
    notify  => Class['apache'],
  }

}
