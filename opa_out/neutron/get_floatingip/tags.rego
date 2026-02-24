package get_floatingip.tags

import data.lib

# Get the floating IP tags
# GET  /floatingips/{id}/tags
# GET  /floatingips/{id}/tags/{tag_id}
# Intended scope(s): project
#"get_floatingip:tags": "(rule:admin_only) or (role:reader and project_id:%(project_id)s)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  reader_and_creds_project_id_eq_input_project_id
}

#(role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
  "reader" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

