package update_port.data_plane_status

import data.lib

# Update ``data_plane_status`` attribute of a port
# PUT  /ports/{id}
# Intended scope(s): project
#"update_port:data_plane_status": "rule:admin_only or role:data_plane_integrator"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  #role:data_plane_integrator
"data_plane_integrator" in input.credentials.roles
}

