package get_l3_routers

import data.neutron_lib

# List routers on an L3 agent
# GET  /agents/{agent_id}/l3-routers
# Intended scope(s): project
# "get_l3-routers": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
