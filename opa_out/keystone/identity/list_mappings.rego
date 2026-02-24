package identity.list_mappings

import data.lib

# List federated mappings.
# GET  /v3/OS-FEDERATION/mappings
# HEAD  /v3/OS-FEDERATION/mappings
# Intended scope(s): system, project
#"identity:list_mappings": "rule:admin_required or (role:reader and system_scope:all)"


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

