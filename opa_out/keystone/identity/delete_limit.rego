package identity.delete_limit

import data.keystone_lib

# Delete limit.
# DELETE  /v3/limits/{limit_id}
# Intended scope(s): system, project
# "identity:delete_limit": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
