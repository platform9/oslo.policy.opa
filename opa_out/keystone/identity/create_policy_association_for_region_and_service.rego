package identity.create_policy_association_for_region_and_service

import data.keystone_lib

# Associate a policy to a specific region and service combination.
# PUT  /v3/policies/{policy_id}/OS-ENDPOINT-POLICY/services/{service_id}/regions/{region_id}
# Intended scope(s): system, project
# "identity:create_policy_association_for_region_and_service": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
