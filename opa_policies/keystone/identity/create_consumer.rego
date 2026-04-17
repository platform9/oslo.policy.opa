package identity.create_consumer

import data.keystone_lib

# Create OAUTH1 consumer.
# POST  /v3/OS-OAUTH1/consumers
# Intended scope(s): system, project
# "identity:create_consumer": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
