package create_subnetpool.shared

import data.lib

# Create a shared subnetpool
# POST  /subnetpools
# Intended scope(s): project
#"create_subnetpool:shared": "rule:admin_only"


allow if {
  lib.admin_only
}

