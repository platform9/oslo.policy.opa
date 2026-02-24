package update_quota

import data.lib

# Update a resource quota
# PUT  /quota/{id}
# Intended scope(s): project
#"update_quota": "rule:admin_only"


allow if {
  lib.admin_only
}

