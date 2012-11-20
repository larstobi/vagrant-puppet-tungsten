class puppet::runpuppet{
  file {"/usr/local/bin/runpuppet":
    content => template("puppet/runpuppet.erb"),
    mode    => 0755
  }
}