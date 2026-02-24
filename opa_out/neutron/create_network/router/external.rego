package create_network.router.external

import data.lib

# Create an external network
# POST  /networks
# Intended scope(s): project
#"create_network:router:external": "rule:admin_only"


allow if {
  lib.admin_only
}

