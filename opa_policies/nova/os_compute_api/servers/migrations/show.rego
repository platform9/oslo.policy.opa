package os_compute_api.servers.migrations.show

import data.nova_lib

# Show details for an in-progress live migration for a given server
# GET  /servers/{server_id}/migrations/{migration_id}
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:migrations:show": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
