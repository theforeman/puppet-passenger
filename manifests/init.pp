class passenger inherits passenger::params {

  class {'apache::mod::passenger':
    passenger_root => $params::passenger_root,
  }

}
