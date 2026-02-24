package get_subnet

import data.lib

# Get a subnet
# GET  /subnets
# GET  /subnets/{id}
# Intended scope(s): project
#"get_subnet": "role:reader and project_id:%(project_id)s or rule:shared or rule:external_network or (rule:admin_only) or (role:reader and rule:network_owner) or rule:service_api"


allow if {
  reader_and_creds_project_id_eq_input_project_id
}

allow if {
  #rule:shared
lib.shared
}

allow if {
  #rule:external_network
lib.external_network
}

allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  reader_and_network_owner
}

allow if {
  #rule:service_api
lib.service_api
}

#(role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
  "reader" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

#(role:reader and rule:network_owner)
reader_and_network_owner if {
  "reader" in input.credentials.roles
  lib.network_owner
}

