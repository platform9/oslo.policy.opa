package os_compute_api.servers.migrations.force_complete

import data.nova_lib

# Force an in-progress live migration for a given server to complete
# POST  /servers/{server_id}/migrations/{migration_id}/action (force_complete)
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:migrations:force_complete": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
