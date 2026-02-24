package create_network.provider.physical_network

import data.lib

# Specify ``provider:physical_network`` when creating a network
# POST  /networks
# Intended scope(s): project
#"create_network:provider:physical_network": "rule:admin_only"


allow if {
  lib.admin_only
}

