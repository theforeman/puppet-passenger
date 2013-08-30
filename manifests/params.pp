class passenger::params {
  case $::osfamily {
    RedHat: {
      $passenger_root = '/usr/lib/ruby/gems/1.8/gems/passenger-4.0.5'
    }
    default: {
      fail("${::hostname}: This module does not support operatingsystem ${::osfamily}")
    }
  }
}
