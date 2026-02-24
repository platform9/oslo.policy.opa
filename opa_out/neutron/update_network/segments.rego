package update_network.segments

import data.lib

# Update ``segments`` attribute of a network
# PUT  /networks/{id}
# Intended scope(s): project
#"update_network:segments": "rule:admin_only"


allow if {
  lib.admin_only
}

