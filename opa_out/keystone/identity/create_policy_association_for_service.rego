package identity.create_policy_association_for_service

import data.lib

# Associate a policy to a specific service.
# PUT  /v3/policies/{policy_id}/OS-ENDPOINT-POLICY/services/{service_id}
# Intended scope(s): system, project
#"identity:create_policy_association_for_service": "rule:admin_required"


allow if {
  lib.admin_required
}

