package identity.create_policy_association_for_region_and_service

import data.lib

# Associate a policy to a specific region and service combination.
# PUT  /v3/policies/{policy_id}/OS-ENDPOINT-POLICY/services/{service_id}/regions/{region_id}
# Intended scope(s): system, project
#"identity:create_policy_association_for_region_and_service": "rule:admin_required"


allow if {
  lib.admin_required
}

