package get_port.hints

import data.lib

# Get ``hints`` attribute of a port
# GET  /ports
# GET  /ports/{id}
# Intended scope(s): project
#"get_port:hints": "rule:admin_only"


allow if {
  lib.admin_only
}

