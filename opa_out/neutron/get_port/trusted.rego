package get_port.trusted

import data.lib

# Get ``trusted`` attribute of a port
# GET  /ports
# GET  /ports/{id}
# Intended scope(s): project
#"get_port:trusted": "rule:admin_only"


allow if {
  lib.admin_only
}

