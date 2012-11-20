class role_base_server{
  include base::editors

  group { "puppet":
    ensure => "present",
  }

  file { '/etc/motd':
    content => "Welcome to your Vagrant-built virtual machine!
                Managed by Puppet.\n"
  }
}
