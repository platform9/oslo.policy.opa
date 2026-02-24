package delete_l3_router

import data.lib

# Remove a router from an L3 agent
# DELETE  /agents/{agent_id}/l3-routers/{router_id}
# Intended scope(s): project
#"delete_l3-router": "rule:admin_only"


allow if {
  lib.admin_only
}

