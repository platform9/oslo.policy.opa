package update_agent

import data.lib

# Update an agent
# PUT  /agents/{id}
# Intended scope(s): project
#"update_agent": "rule:admin_only"


allow if {
  lib.admin_only
}

