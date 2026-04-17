package identity.update_service

import data.keystone_lib

# Update service.
# PATCH  /v3/services/{service_id}
# Intended scope(s): system, project
# "identity:update_service": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
