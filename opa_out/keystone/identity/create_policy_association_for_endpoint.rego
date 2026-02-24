package identity.create_policy_association_for_endpoint

import data.lib

# Associate a policy to a specific endpoint.
# PUT  /v3/policies/{policy_id}/OS-ENDPOINT-POLICY/endpoints/{endpoint_id}
# Intended scope(s): system, project
#"identity:create_policy_association_for_endpoint": "rule:admin_required"


allow if {
  lib.admin_required
}

