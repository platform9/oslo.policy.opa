package get_l3_agents

import data.lib

# List L3 agents hosting a router
# GET  /routers/{router_id}/l3-agents
# Intended scope(s): project
#"get_l3-agents": "rule:admin_only"


allow if {
  lib.admin_only
}

