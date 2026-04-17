package identity.delete_consumer

import data.keystone_lib

# Delete OAUTH1 consumer.
# DELETE  /v3/OS-OAUTH1/consumers/{consumer_id}
# Intended scope(s): system, project
# "identity:delete_consumer": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
