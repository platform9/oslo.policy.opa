package identity.update_role

import data.keystone_lib

# Update role.
# PATCH  /v3/roles/{role_id}
# Intended scope(s): system, project
# Target attrs: target.role.description, target.role.domain_id, target.role.extra, target.role.id, target.role.name
# "identity:update_role": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
