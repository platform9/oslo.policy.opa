package get_floatingip

import data.lib

# Get a floating IP
# GET  /floatingips
# GET  /floatingips/{id}
# Intended scope(s): project
#"get_floatingip": "(rule:admin_only) or (role:reader and project_id:%(project_id)s)"


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

