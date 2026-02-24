package update_port.mac_address

import data.lib

# Update ``mac_address`` attribute of a port
# PUT  /ports/{id}
# Intended scope(s): project
#"update_port:mac_address": "(rule:admin_only) or (rule:service_api) or role:manager and project_id:%(project_id)s"


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

#(role:manager and project_id:%(project_id)s)
manager_and_creds_project_id_eq_input_project_id if {
  "manager" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

