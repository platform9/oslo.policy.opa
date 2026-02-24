package identity.list_domain_roles

import data.lib

# List domain roles.
# GET  /v3/roles?domain_id={domain_id}
# HEAD  /v3/roles?domain_id={domain_id}
# Intended scope(s): system, project
#"identity:list_domain_roles": "rule:admin_required or (role:reader and system_scope:all)"


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

