package os_compute_api.os_migrations.index

import data.nova_lib

# List migrations
# GET  /os-migrations
# Intended scope(s): project
# "os_compute_api:os-migrations:index": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
