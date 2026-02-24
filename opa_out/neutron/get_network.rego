package get_network

import data.lib

# Get a network
# GET  /networks
# GET  /networks/{id}
# Intended scope(s): project
#"get_network": "(rule:admin_only) or (role:reader and project_id:%(project_id)s) or rule:service_api or rule:shared or rule:external or rule:context_is_advsvc"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  reader_and_creds_project_id_eq_input_project_id
}

allow if {
  #rule:service_api
lib.service_api
}

allow if {
  #rule:shared
lib.shared
}

allow if {
  #rule:external
lib.external
}

allow if {
  #rule:context_is_advsvc
lib.context_is_advsvc
}

#(role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
  "reader" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

