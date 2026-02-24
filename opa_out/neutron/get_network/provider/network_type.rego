package get_network.provider.network_type

import data.lib

# Get ``provider:network_type`` attribute of a network
# GET  /networks
# GET  /networks/{id}
# Intended scope(s): project
#"get_network:provider:network_type": "rule:admin_only"


allow if {
  lib.admin_only
}

