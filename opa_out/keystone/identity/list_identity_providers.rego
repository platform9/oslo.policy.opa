package identity.list_identity_providers

import data.lib

# List identity providers.
# GET  /v3/OS-FEDERATION/identity_providers
# HEAD  /v3/OS-FEDERATION/identity_providers
# Intended scope(s): system, project
#"identity:list_identity_providers": "rule:admin_required or (role:reader and system_scope:all)"


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

