package get_network.provider.physical_network

import data.lib

# Get ``provider:physical_network`` attribute of a network
# GET  /networks
# GET  /networks/{id}
# Intended scope(s): project
#"get_network:provider:physical_network": "rule:admin_only"


allow if {
  lib.admin_only
}

