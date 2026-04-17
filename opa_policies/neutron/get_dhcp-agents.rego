package get_dhcp_agents

import data.neutron_lib

# List DHCP agents hosting a network
# GET  /networks/{network_id}/dhcp-agents
# Intended scope(s): project
# "get_dhcp-agents": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
