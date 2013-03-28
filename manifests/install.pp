class passenger::install {
  case $::osfamily {
    RedHat: {
      include passenger::install::redhat
    }
    Debian,Ubuntu: {
      include passenger::install::debian
    }
    default: {
      fail("${::hostname}: This module does not support operatingsystem ${::operatingsystem}")
    }
  }
}
