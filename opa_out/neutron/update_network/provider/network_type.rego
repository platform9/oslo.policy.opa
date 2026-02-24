package update_network.provider.network_type

import data.lib

# Update ``provider:network_type`` attribute of a network
# PUT  /networks/{id}
# Intended scope(s): project
#"update_network:provider:network_type": "rule:admin_only"


allow if {
  lib.admin_only
}

