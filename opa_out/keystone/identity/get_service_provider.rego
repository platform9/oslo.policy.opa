package identity.get_service_provider

import data.lib

# Get federated service provider.
# GET  /v3/OS-FEDERATION/service_providers/{service_provider_id}
# HEAD  /v3/OS-FEDERATION/service_providers/{service_provider_id}
# Intended scope(s): system, project
#"identity:get_service_provider": "rule:admin_required or (role:reader and system_scope:all)"


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

