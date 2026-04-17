package identity.create_limits

import data.keystone_lib

# Create limits.
# POST  /v3/limits
# Intended scope(s): system, project
# "identity:create_limits": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
