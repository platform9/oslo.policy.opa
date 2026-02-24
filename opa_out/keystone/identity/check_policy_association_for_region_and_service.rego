package identity.check_policy_association_for_region_and_service

import data.lib

# Check policy association for region and service.
# GET  /v3/policies/{policy_id}/OS-ENDPOINT-POLICY/services/{service_id}/regions/{region_id}
# HEAD  /v3/policies/{policy_id}/OS-ENDPOINT-POLICY/services/{service_id}/regions/{region_id}
# Intended scope(s): system, project
#"identity:check_policy_association_for_region_and_service": "rule:admin_required or (role:reader and system_scope:all)"


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

