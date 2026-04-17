package os_compute_api.os_migrate_server.migrate

import data.nova_lib

# Cold migrate a server without specifying a host
# POST  /servers/{server_id}/action (migrate)
# Intended scope(s): project
# "os_compute_api:os-migrate-server:migrate": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
