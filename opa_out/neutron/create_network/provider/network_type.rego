package create_network.provider.network_type

import data.lib

# Specify ``provider:network_type`` when creating a network
# POST  /networks
# Intended scope(s): project
#"create_network:provider:network_type": "rule:admin_only"


allow if {
  lib.admin_only
}

