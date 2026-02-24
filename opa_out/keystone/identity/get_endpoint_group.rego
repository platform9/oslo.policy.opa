package identity.get_endpoint_group

import data.lib

# Get endpoint group.
# GET  /v3/OS-EP-FILTER/endpoint_groups/{endpoint_group_id}
# HEAD  /v3/OS-EP-FILTER/endpoint_groups/{endpoint_group_id}
# Intended scope(s): system, project
#"identity:get_endpoint_group": "rule:admin_required or (role:reader and system_scope:all)"


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

