package update_policy.tags

import data.lib

# Update the QoS policy tags
# PUT  /qos/policies/{id}/tags
# PUT  /qos/policies/{id}/tags/{tag_id}
# Intended scope(s): project
#"update_policy:tags": "(rule:admin_only) or (role:manager and project_id:%(project_id)s)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  manager_and_creds_project_id_eq_input_project_id
}

#(role:manager and project_id:%(project_id)s)
manager_and_creds_project_id_eq_input_project_id if {
  "manager" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

