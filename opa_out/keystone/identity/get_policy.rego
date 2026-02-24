package identity.get_policy

import data.lib

# Show policy details.
# GET  /v3/policies/{policy_id}
# Intended scope(s): system, project
#"identity:get_policy": "rule:admin_required or (role:reader and system_scope:all)"


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

