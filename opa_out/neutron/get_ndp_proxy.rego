package get_ndp_proxy

import data.lib

# Get a ndp proxy
# GET  /ndp_proxies
# GET  /ndp_proxies/{id}
# Intended scope(s): project
#"get_ndp_proxy": "(rule:admin_only) or (role:reader and project_id:%(project_id)s)"


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

