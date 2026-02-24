package update_port.port_security_enabled

import data.lib

# Update ``port_security_enabled`` attribute of a port
# PUT  /ports/{id}
# Intended scope(s): project
#"update_port:port_security_enabled": "(rule:admin_only) or (rule:service_api) or role:manager and project_id:%(project_id)s or role:member and rule:network_owner"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  #rule:service_api
lib.service_api
}

allow if {
  manager_and_creds_project_id_eq_input_project_id
}

allow if {
  member_and_network_owner
}

#(role:manager and project_id:%(project_id)s)
manager_and_creds_project_id_eq_input_project_id if {
  "manager" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

#(role:member and rule:network_owner)
member_and_network_owner if {
  "member" in input.credentials.roles
  lib.network_owner
}

