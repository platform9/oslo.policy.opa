package update_subnetpool.is_dflt

import data.lib

# Update ``is_default`` attribute of a subnetpool
# PUT  /subnetpools/{id}
# Intended scope(s): project
#"update_subnetpool:is_default": "rule:admin_only"


allow if {
  lib.admin_only
}

