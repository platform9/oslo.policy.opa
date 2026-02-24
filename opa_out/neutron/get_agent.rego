package get_agent

import data.lib

# Get an agent
# GET  /agents
# GET  /agents/{id}
# Intended scope(s): project
#"get_agent": "rule:admin_only"


allow if {
  lib.admin_only
}

