package identity.list_endpoints_associated_with_endpoint_group

import data.lib

# List all endpoints associated with an endpoint group.
# GET  /v3/OS-EP-FILTER/endpoint_groups/{endpoint_group_id}/endpoints
# Intended scope(s): system, project
#"identity:list_endpoints_associated_with_endpoint_group": "rule:admin_required or (role:reader and system_scope:all)"


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

