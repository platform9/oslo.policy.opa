package delete_port_binding

import data.lib

# Delete port binding on the host
# DELETE  /ports/{port_id}/bindings/
# Intended scope(s): project
#"delete_port_binding": "rule:service_api"


allow if {
  lib.service_api
}

