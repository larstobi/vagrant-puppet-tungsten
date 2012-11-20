class base::env{
  file{"/etc/environment":
    content => template('base/environment.erb')
  }

  file { '/etc/motd':
    content => "Welcome to your Vagrant-built virtual machine!
                Managed by Puppet.\n"
  }
}