package delete_port.tags

import data.lib

# Delete the port tags
# DELETE  /ports/{id}/tags
# DELETE  /ports/{id}/tags/{tag_id}
# Intended scope(s): project
#"delete_port:tags": "rule:context_is_advsvc or role:member and project_id:%(project_id)s or (rule:admin_only) or (role:member and rule:network_owner)"


allow if {
  #rule:context_is_advsvc
lib.context_is_advsvc
}

allow if {
  member_and_creds_project_id_eq_input_project_id
}

allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  member_and_network_owner
}

#(role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
  "member" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

#(role:member and rule:network_owner)
member_and_network_owner if {
  "member" in input.credentials.roles
  lib.network_owner
}

