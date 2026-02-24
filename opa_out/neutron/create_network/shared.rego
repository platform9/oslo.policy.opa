package create_network.shared

import data.lib

# Create a shared network
# POST  /networks
# Intended scope(s): project
#"create_network:shared": "rule:admin_only"


allow if {
  lib.admin_only
}

