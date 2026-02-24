package identity.list_service_providers

import data.lib

# List federated service providers.
# GET  /v3/OS-FEDERATION/service_providers
# HEAD  /v3/OS-FEDERATION/service_providers
# Intended scope(s): system, project
#"identity:list_service_providers": "rule:admin_required or (role:reader and system_scope:all)"


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

