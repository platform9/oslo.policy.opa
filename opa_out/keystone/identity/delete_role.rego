package identity.delete_role

import data.keystone_lib

# Delete role.
# DELETE  /v3/roles/{role_id}
# Intended scope(s): system, project
# Target attrs: target.role.description, target.role.domain_id, target.role.extra, target.role.id, target.role.name
# "identity:delete_role": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
