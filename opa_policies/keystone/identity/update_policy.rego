package identity.update_policy

import data.keystone_lib

# Update policy.
# PATCH  /v3/policies/{policy_id}
# Intended scope(s): system, project
# "identity:update_policy": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
