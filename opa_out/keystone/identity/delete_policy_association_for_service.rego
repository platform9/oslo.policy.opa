package identity.delete_policy_association_for_service

import data.lib

# Delete policy association for service.
# DELETE  /v3/policies/{policy_id}/OS-ENDPOINT-POLICY/services/{service_id}
# Intended scope(s): system, project
#"identity:delete_policy_association_for_service": "rule:admin_required"


allow if {
  lib.admin_required
}

