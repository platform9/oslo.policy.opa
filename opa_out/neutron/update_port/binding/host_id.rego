package update_port.binding.host_id

import data.lib

# Update ``binding:host_id`` attribute of a port
# PUT  /ports/{id}
# Intended scope(s): project
#"update_port:binding:host_id": "(rule:admin_only) or (rule:service_api)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  #rule:service_api
lib.service_api
}

