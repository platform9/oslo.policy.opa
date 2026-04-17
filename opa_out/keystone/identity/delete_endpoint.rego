package identity.delete_endpoint

import data.keystone_lib

# Delete endpoint.
# DELETE  /v3/endpoints/{endpoint_id}
# Intended scope(s): system, project
# "identity:delete_endpoint": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
