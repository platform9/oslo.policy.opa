package identity.create_registered_limits

import data.keystone_lib

# Create registered limits.
# POST  /v3/registered_limits
# Intended scope(s): system, project
# "identity:create_registered_limits": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
