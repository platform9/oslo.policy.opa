package identity.list_protocols

import data.lib

# List federated protocols.
# GET  /v3/OS-FEDERATION/identity_providers/{idp_id}/protocols
# Intended scope(s): system, project
#"identity:list_protocols": "rule:admin_required or (role:reader and system_scope:all)"


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

