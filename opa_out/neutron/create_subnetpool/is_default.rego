package create_subnetpool.is_dflt

import data.lib

# Specify ``is_default`` attribute when creating a subnetpool
# POST  /subnetpools
# Intended scope(s): project
#"create_subnetpool:is_default": "rule:admin_only"


allow if {
  lib.admin_only
}

