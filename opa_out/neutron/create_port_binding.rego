package create_port_binding

import data.lib

# Create port binding on the host
# POST  /ports/{port_id}/bindings/
# Intended scope(s): project
#"create_port_binding": "rule:service_api"


allow if {
  lib.service_api
}

