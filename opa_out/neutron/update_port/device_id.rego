package update_port.device_id

import data.lib

# Update ``device_id`` attribute of a port
# PUT  /ports/{id}
# Intended scope(s): project
#"update_port:device_id": "(rule:admin_only) or (role:member and project_id:%(project_id)s) or rule:service_api"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  member_and_creds_project_id_eq_input_project_id
}

allow if {
  #rule:service_api
lib.service_api
}

#(role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
  "member" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

