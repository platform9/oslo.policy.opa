package create_network.is_dflt

import data.lib

# Specify ``is_default`` attribute when creating a network
# POST  /networks
# Intended scope(s): project
#"create_network:is_default": "rule:admin_only"


allow if {
  lib.admin_only
}

