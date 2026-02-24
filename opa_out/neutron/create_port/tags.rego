package create_port.tags

import data.lib

# Create the port tags
# POST  /ports/{id}/tags
# Intended scope(s): project
#"create_port:tags": "(rule:admin_only) or (role:member and project_id:%(project_id)s) or rule:context_is_advsvc"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  member_and_creds_project_id_eq_input_project_id
}

allow if {
  #rule:context_is_advsvc
lib.context_is_advsvc
}

#(role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
  "member" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

