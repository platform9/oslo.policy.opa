package identity.validate_token

import data.lib

# Validate a token.
# GET  /v3/auth/tokens
# Intended scope(s): system, domain, project
#"identity:validate_token": "rule:admin_required or (role:reader and system_scope:all) or rule:service_role or rule:token_subject"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all
}

allow if {
  #rule:service_role
lib.service_role
}

allow if {
  #rule:token_subject
lib.token_subject
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

