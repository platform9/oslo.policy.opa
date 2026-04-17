package os_compute_api.os_server_tags.delete_all

import data.nova_lib

# Delete all the server tags
# DELETE  /servers/{server_id}/tags
# Intended scope(s): project
# "os_compute_api:os-server-tags:delete_all": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
