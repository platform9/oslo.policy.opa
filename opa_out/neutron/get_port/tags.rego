package get_port.tags

import data.lib

# Get the port tags
# GET  /ports/{id}/tags
# GET  /ports/{id}/tags/{tag_id}
# Intended scope(s): project
#"get_port:tags": "rule:context_is_advsvc or (rule:admin_only) or (role:reader and rule:network_owner) or role:reader and project_id:%(project_id)s"


allow if {
  #rule:context_is_advsvc
lib.context_is_advsvc
}

allow if {
  #rule:admin_only
lib.admin_only
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

