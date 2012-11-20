node 'web' inherits base_node {

}

node 'master' inherits base_node {
  include tungsten::replicator
}

node 'slave' inherits base_node {
  include tungsten::replicator
}

node default inherits base_node{

}