package identity.revoke_system_grant_for_user

import data.keystone_lib

# Remove a role from a user on the system.
# ['DELETE']  /v3/system/users/{user_id}/roles/{role_id}
# Intended scope(s): system, project
# "identity:revoke_system_grant_for_user": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
