package update_network.is_dflt

import data.lib

# Update ``is_default`` attribute of a network
# PUT  /networks/{id}
# Intended scope(s): project
#"update_network:is_default": "rule:admin_only"


allow if {
  lib.admin_only
}

