package identity.update_region

import data.keystone_lib

# Update region.
# PATCH  /v3/regions/{region_id}
# Intended scope(s): system, project
# "identity:update_region": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
