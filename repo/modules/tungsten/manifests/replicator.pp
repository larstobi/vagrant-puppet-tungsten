class tungsten::replicator{

  include tungsten::params
  include tungsten::replicator::packages
  include tungsten::replicator::download

  Class['tungsten::params']
    -> Class['tungsten::replicator::packages']
    -> Class['tungsten::replicator::download']
}

class tungsten::replicator::packages{
  include java::openjdk6
}


class tungsten::replicator::download{
  exec{"download tungsten":
    command => "echo 1 && \
      cd /tmp && \
      wget $tungsten::params::url",
    unless => "test -e /tmp/$tungsten::params::file"
  }
}