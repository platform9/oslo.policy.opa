package os_compute_api.os_migrate_server.migrate_live

import data.nova_lib

# Live migrate a server to a new host without a reboot
# POST  /servers/{server_id}/action (os-migrateLive)
# Intended scope(s): project
# "os_compute_api:os-migrate-server:migrate_live": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
