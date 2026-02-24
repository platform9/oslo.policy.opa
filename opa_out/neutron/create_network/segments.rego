package create_network.segments

import data.lib

# Specify ``segments`` attribute when creating a network
# POST  /networks
# Intended scope(s): project
#"create_network:segments": "rule:admin_only"


allow if {
  lib.admin_only
}

