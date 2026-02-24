package get_policy.tags

import data.lib

# Get QoS policy tags
# GET  /qos/policies/{id}/tags
# GET  /qos/policies/{id}/tags/{tag_id}
# Intended scope(s): project
#"get_policy:tags": "(rule:admin_only) or (role:reader and project_id:%(project_id)s) or rule:shared_qos_policy"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  reader_and_creds_project_id_eq_input_project_id
}

allow if {
  #rule:shared_qos_policy
lib.shared_qos_policy
}

#(role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
  "reader" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

