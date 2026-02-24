package get_network.segments

import data.lib

# Get ``segments`` attribute of a network
# GET  /networks
# GET  /networks/{id}
# Intended scope(s): project
#"get_network:segments": "rule:admin_only"


allow if {
  lib.admin_only
}

