package identity.list_projects_for_endpoint

import data.lib

# List projects allowed to access an endpoint.
# GET  /v3/OS-EP-FILTER/endpoints/{endpoint_id}/projects
# Intended scope(s): system, project
#"identity:list_projects_for_endpoint": "rule:admin_required or (role:reader and system_scope:all)"


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

