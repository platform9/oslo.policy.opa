package get_dhcp_agents

import data.lib

# List DHCP agents hosting a network
# GET  /networks/{network_id}/dhcp-agents
# Intended scope(s): project
#"get_dhcp-agents": "rule:admin_only"


allow if {
  lib.admin_only
}

