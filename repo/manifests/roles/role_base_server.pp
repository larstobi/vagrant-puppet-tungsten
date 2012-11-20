class role_base_server{
  include base::editors
  class{'base::env': stage => first }

  include puppet::runpuppet
  include users::puppet
}
