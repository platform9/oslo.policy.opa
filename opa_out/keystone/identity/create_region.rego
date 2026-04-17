package identity.create_region

import data.keystone_lib

# Create region.
# POST  /v3/regions
# PUT  /v3/regions/{region_id}
# Intended scope(s): system, project
# "identity:create_region": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
