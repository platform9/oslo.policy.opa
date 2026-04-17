package os_compute_api.servers.allow_all_filters

import data.nova_lib

# Allow all filters when listing servers
# GET  /servers
# GET  /servers/detail
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:allow_all_filters": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
