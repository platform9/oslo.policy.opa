package identity.update_endpoint

import data.keystone_lib

# Update endpoint.
# PATCH  /v3/endpoints/{endpoint_id}
# Intended scope(s): system, project
# "identity:update_endpoint": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
