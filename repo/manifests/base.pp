File { owner => 0, group => 0, mode => 0644 }
Exec { path => "/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin/:/bin:/sbin" }

stage { 'first':}
stage { 'last': }
Stage['first'] -> Stage['main'] -> Stage['last']

import 'roles/*.pp'
import 'nodes.pp'

