package identity.list_application_credentials

import data.lib

# List application credentials for a user.
# GET  /v3/users/{user_id}/application_credentials
# HEAD  /v3/users/{user_id}/application_credentials
# Intended scope(s): system, project
#"identity:list_application_credentials": "(rule:admin_required) or (role:reader and system_scope:all) or rule:owner"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all
}

allow if {
  #rule:owner
lib.owner
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

