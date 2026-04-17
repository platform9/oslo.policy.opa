package os_compute_api.servers.migrations.index

import data.nova_lib

# Lists in-progress live migrations for a given server
# GET  /servers/{server_id}/migrations
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:migrations:index": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
