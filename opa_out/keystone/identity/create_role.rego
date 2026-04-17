package identity.create_role

import data.keystone_lib

# Create role.
# POST  /v3/roles
# Intended scope(s): system, project
# Target attrs: target.role.description, target.role.domain_id, target.role.extra, target.role.id, target.role.name
# "identity:create_role": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
