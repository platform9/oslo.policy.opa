package identity.create_policy_association_for_service

import data.keystone_lib

# Associate a policy to a specific service.
# PUT  /v3/policies/{policy_id}/OS-ENDPOINT-POLICY/services/{service_id}
# Intended scope(s): system, project
# "identity:create_policy_association_for_service": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
