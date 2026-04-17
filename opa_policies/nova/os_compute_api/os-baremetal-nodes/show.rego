package os_compute_api.os_baremetal_nodes.show

import data.nova_lib

# Show action details for a server.
# GET  /os-baremetal-nodes/{node_id}
# Intended scope(s): project
# "os_compute_api:os-baremetal-nodes:show": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
