package os_compute_api.servers.detail.get_all_tenants

import data.nova_lib

# List all servers with detailed information for  all projects
# GET  /servers/detail
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:detail:get_all_tenants": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
