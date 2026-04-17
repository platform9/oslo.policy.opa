package os_compute_api.os_deferred_delete.force

import data.nova_lib

# Force delete a server before deferred cleanup
# POST  /servers/{server_id}/action (forceDelete)
# Intended scope(s): project
# "os_compute_api:os-deferred-delete:force": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
