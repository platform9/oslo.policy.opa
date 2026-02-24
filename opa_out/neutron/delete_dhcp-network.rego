package delete_dhcp_network

import data.lib

# Remove a network from a DHCP agent
# DELETE  /agents/{agent_id}/dhcp-networks/{network_id}
# Intended scope(s): project
#"delete_dhcp-network": "rule:admin_only"


allow if {
  lib.admin_only
}

