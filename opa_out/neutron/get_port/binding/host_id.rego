package get_port.binding.host_id

import data.lib

# Get ``binding:host_id`` attribute of a port
# GET  /ports
# GET  /ports/{id}
# Intended scope(s): project
#"get_port:binding:host_id": "(rule:admin_only) or (rule:service_api)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  #rule:service_api
lib.service_api
}

