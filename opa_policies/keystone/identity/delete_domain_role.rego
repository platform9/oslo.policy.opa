package identity.delete_domain_role

import data.keystone_lib

# Delete domain role.
# DELETE  /v3/roles/{role_id}
# Intended scope(s): system, project
# "identity:delete_domain_role": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
