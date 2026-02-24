package update_network.shared

import data.lib

# Update ``shared`` attribute of a network
# PUT  /networks/{id}
# Intended scope(s): project
#"update_network:shared": "rule:admin_only"


allow if {
  lib.admin_only
}

