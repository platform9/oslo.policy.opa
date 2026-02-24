package identity.get_domain_role

import data.lib

# Show domain role.
# GET  /v3/roles/{role_id}
# HEAD  /v3/roles/{role_id}
# Intended scope(s): system, project
#"identity:get_domain_role": "rule:admin_required or (role:reader and system_scope:all)"


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

