package get_subnetpool

import data.lib

# Get a subnetpool
# GET  /subnetpools
# GET  /subnetpools/{id}
# Intended scope(s): project
#"get_subnetpool": "(rule:admin_only) or (role:reader and project_id:%(project_id)s) or rule:shared_subnetpools"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  reader_and_creds_project_id_eq_input_project_id
}

allow if {
  #rule:shared_subnetpools
lib.shared_subnetpools
}

#(role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
  "reader" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

