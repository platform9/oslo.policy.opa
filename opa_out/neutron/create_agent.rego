package create_agent

import data.lib

# Create an agent
# POST  /agents/{id}
# Intended scope(s): project
#"create_agent": "rule:admin_only"


allow if {
  lib.admin_only
}

