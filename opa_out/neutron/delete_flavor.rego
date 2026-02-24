package delete_flavor

import data.lib

# Delete a flavor
# DELETE  /flavors/{id}
# Intended scope(s): project
#"delete_flavor": "rule:admin_only"


allow if {
  lib.admin_only
}

