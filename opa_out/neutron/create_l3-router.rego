package create_l3_router

import data.lib

# Add a router to an L3 agent
# POST  /agents/{agent_id}/l3-routers
# Intended scope(s): project
#"create_l3-router": "rule:admin_only"


allow if {
  lib.admin_only
}

