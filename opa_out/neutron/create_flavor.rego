package create_flavor

import data.lib

# Create a flavor
# POST  /flavors
# Intended scope(s): project
#"create_flavor": "rule:admin_only"


allow if {
  lib.admin_only
}

