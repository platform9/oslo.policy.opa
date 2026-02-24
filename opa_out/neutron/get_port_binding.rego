package get_port_binding

import data.lib

# Get port binding information
# GET  /ports/{port_id}/bindings/
# Intended scope(s): project
#"get_port_binding": "(rule:admin_only) or (rule:service_api)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  #rule:service_api
lib.service_api
}

