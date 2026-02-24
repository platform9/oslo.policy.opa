package get_dhcp_networks

import data.lib

# List networks on a DHCP agent
# GET  /agents/{agent_id}/dhcp-networks
# Intended scope(s): project
#"get_dhcp-networks": "rule:admin_only"


allow if {
  lib.admin_only
}

