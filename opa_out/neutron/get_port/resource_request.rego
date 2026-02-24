package get_port.resource_request

import data.lib

# Get ``resource_request`` attribute of a port
# GET  /ports
# GET  /ports/{id}
# Intended scope(s): project
#"get_port:resource_request": "rule:admin_only"


allow if {
  lib.admin_only
}

