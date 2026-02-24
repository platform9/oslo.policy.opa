package delete_quota

import data.lib

# Delete a resource quota
# DELETE  /quota/{id}
# Intended scope(s): project
#"delete_quota": "rule:admin_only"


allow if {
  lib.admin_only
}

