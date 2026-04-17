package os_compute_api.os_server_external_events.create

import data.nova_lib

# Create one or more external events
# POST  /os-server-external-events
# Intended scope(s): project
# "os_compute_api:os-server-external-events:create": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
