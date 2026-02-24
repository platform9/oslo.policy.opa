package update_port.trusted

import data.lib

# Update ``trusted`` attribute of a port
# PUT  /ports/{id}
# Intended scope(s): project
#"update_port:trusted": "rule:admin_only"


allow if {
  lib.admin_only
}

