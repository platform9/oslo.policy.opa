package network.attach_external_network

import data.lib

# Attach an unshared external network to a server
# POST  /servers
# POST  /servers/{server_id}/os-interface
# Intended scope(s): project
#"network:attach_external_network": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

