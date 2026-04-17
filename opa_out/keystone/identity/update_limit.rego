package identity.update_limit

import data.keystone_lib

# Update limit.
# PATCH  /v3/limits/{limit_id}
# Intended scope(s): system, project
# "identity:update_limit": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
