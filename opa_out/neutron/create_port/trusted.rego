package create_port.trusted

import data.lib

# Specify ``trusted`` attribute when creating a port
# POST  /ports
# Intended scope(s): project
#"create_port:trusted": "rule:admin_only"


allow if {
  lib.admin_only
}

