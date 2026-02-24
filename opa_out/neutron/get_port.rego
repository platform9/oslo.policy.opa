package get_port

import data.lib

# Get a port
# GET  /ports
# GET  /ports/{id}
# Intended scope(s): project
#"get_port": "(rule:admin_only) or (rule:service_api) or role:reader and rule:network_owner or role:reader and project_id:%(project_id)s"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  #rule:service_api
lib.service_api
}

allow if {
  reader_and_network_owner
}

allow if {
  reader_and_creds_project_id_eq_input_project_id
}

#(role:reader and rule:network_owner)
reader_and_network_owner if {
  "reader" in input.credentials.roles
  lib.network_owner
}

#(role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
  "reader" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

