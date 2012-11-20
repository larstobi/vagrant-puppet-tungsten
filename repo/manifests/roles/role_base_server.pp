class role_base_server{
  include base::editors
  include base::env
  include puppet::runpuppet
  include users::puppet
}
