package delete_agent

import data.lib

# Delete an agent
# DELETE  /agents/{id}
# Intended scope(s): project
#"delete_agent": "rule:admin_only"


allow if {
  lib.admin_only
}

