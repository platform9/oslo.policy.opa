package identity.update_consumer

import data.keystone_lib

# Update OAUTH1 consumer.
# PATCH  /v3/OS-OAUTH1/consumers/{consumer_id}
# Intended scope(s): system, project
# "identity:update_consumer": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
