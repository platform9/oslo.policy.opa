package identity.delete_policy_association_for_region_and_service

import data.lib

# Delete policy association for region and service.
# DELETE  /v3/policies/{policy_id}/OS-ENDPOINT-POLICY/services/{service_id}/regions/{region_id}
# Intended scope(s): system, project
#"identity:delete_policy_association_for_region_and_service": "rule:admin_required"


allow if {
  lib.admin_required
}

