package create_port.binding.host_id

import data.lib

# Specify ``binding:host_id`` attribute when creating a port
# POST  /ports
# Intended scope(s): project
#"create_port:binding:host_id": "(rule:admin_only) or (rule:service_api)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  #rule:service_api
lib.service_api
}

