package identity.check_endpoint_in_project

import data.lib

# Check if a project is allowed to access an endpoint.
# GET  /v3/OS-EP-FILTER/projects/{project_id}/endpoints/{endpoint_id}
# HEAD  /v3/OS-EP-FILTER/projects/{project_id}/endpoints/{endpoint_id}
# Intended scope(s): system, project
#"identity:check_endpoint_in_project": "rule:admin_required or (role:reader and system_scope:all)"


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

