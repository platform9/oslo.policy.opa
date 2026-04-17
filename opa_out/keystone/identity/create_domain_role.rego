package identity.create_domain_role

import data.keystone_lib

# Create domain role.
# POST  /v3/roles
# Intended scope(s): system, project
# "identity:create_domain_role": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
