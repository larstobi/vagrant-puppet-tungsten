class tungsten::replicator{
  include tungsten::params
  $tungsten::params::url
  notify{"tungsten rocks!":}
}


class tungsten::replicator::download{
  exec{"download tungsten":
    command => "echo 1 && cd /tmp && \
      wget {$tungsten::params::url}",
    unless => "test -e /tmp/something"
  }
}