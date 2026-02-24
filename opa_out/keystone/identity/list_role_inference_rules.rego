package identity.list_role_inference_rules

import data.lib

# List all associations between two roles in the system. When a
# relationship exists between a prior role and an implied role and the
# prior role is assigned to a user, the user also assumes the implied
# role.
# GET  /v3/role_inferences
# HEAD  /v3/role_inferences
# Intended scope(s): system, project
#"identity:list_role_inference_rules": "rule:admin_required or (role:reader and system_scope:all)"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

