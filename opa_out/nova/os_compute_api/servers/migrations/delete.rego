package os_compute_api.servers.migrations.delete

import data.nova_lib

# Delete(Abort) an in-progress live migration
# DELETE  /servers/{server_id}/migrations/{migration_id}
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:migrations:delete": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
