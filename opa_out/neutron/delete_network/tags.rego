package delete_network.tags

import data.lib

# Delete the network tags
# DELETE  /networks/{id}/tags
# DELETE  /networks/{id}/tags/{tag_id}
# Intended scope(s): project
#"delete_network:tags": "(rule:admin_only) or (role:member and project_id:%(project_id)s)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  member_and_creds_project_id_eq_input_project_id
}

#(role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
  "member" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

