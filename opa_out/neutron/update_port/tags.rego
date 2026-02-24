package update_port.tags

import data.lib

# Update the port tags
# PUT  /ports/{id}/tags
# PUT  /ports/{id}/tags/{tag_id}
# Intended scope(s): project
#"update_port:tags": "(rule:admin_only) or (role:member and project_id:%(project_id)s) or rule:context_is_advsvc"


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

