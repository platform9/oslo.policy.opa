package os_compute_api.os_admin_actions.inject_network_info

import data.nova_lib

# Inject network information into the server
# POST  /servers/{server_id}/action (injectNetworkInfo)
# Intended scope(s): project
# "os_compute_api:os-admin-actions:inject_network_info": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
