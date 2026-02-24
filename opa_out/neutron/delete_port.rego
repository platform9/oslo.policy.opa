package delete_port

import data.lib

# Delete a port
# DELETE  /ports/{id}
# Intended scope(s): project
#"delete_port": "(rule:admin_only) or (rule:service_api) or role:member and rule:network_owner or role:member and project_id:%(project_id)s"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  #rule:service_api
lib.service_api
}

allow if {
  member_and_network_owner
}

allow if {
  member_and_creds_project_id_eq_input_project_id
}

#(role:member and rule:network_owner)
member_and_network_owner if {
  "member" in input.credentials.roles
  lib.network_owner
}

#(role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
  "member" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

