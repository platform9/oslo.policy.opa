package create_dhcp_network

import data.lib

# Add a network to a DHCP agent
# POST  /agents/{agent_id}/dhcp-networks
# Intended scope(s): project
#"create_dhcp-network": "rule:admin_only"


allow if {
  lib.admin_only
}

