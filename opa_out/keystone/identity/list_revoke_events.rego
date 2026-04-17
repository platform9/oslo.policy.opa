package identity.list_revoke_events

import data.keystone_lib

# List revocation events.
# GET  /v3/OS-REVOKE/events
# Intended scope(s): system, project
# "identity:list_revoke_events": "rule:service_or_admin"

allow if {
	keystone_lib.service_or_admin
}
