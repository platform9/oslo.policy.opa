package update_network.provider.physical_network

import data.lib

# Update ``provider:physical_network`` attribute of a network
# PUT  /networks/{id}
# Intended scope(s): project
#"update_network:provider:physical_network": "rule:admin_only"


allow if {
  lib.admin_only
}

