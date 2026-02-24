package update_flavor

import data.lib

# Update a flavor
# PUT  /flavors/{id}
# Intended scope(s): project
#"update_flavor": "rule:admin_only"


allow if {
  lib.admin_only
}

