class users::puppet{
  group { "puppet":
    ensure => "present",
  }
}