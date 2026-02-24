package update_network.router.external

import data.lib

# Update ``router:external`` attribute of a network
# PUT  /networks/{id}
# Intended scope(s): project
#"update_network:router:external": "rule:admin_only"


allow if {
  lib.admin_only
}

