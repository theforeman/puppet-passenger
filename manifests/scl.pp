# Extra package with passenger libs compiled against the SCL
#
# Layered on top of the regular mod_passenger installation, which is compiled
# for the regular system Ruby.
class passenger::scl($prefix) {
  package{ "${prefix}-rubygem-passenger-native":
    ensure  => installed,
    require => Class['apache'],
    before  => Class['apache::service'],
  }
}
