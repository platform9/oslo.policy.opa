package identity.update_registered_limit

import data.keystone_lib

# Update registered limit.
# PATCH  /v3/registered_limits/{registered_limit_id}
# Intended scope(s): system, project
# "identity:update_registered_limit": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
