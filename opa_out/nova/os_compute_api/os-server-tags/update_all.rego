package os_compute_api.os_server_tags.update_all

import data.nova_lib

# Replace all tags on specified server with the new set of tags.
# PUT  /servers/{server_id}/tags
# Intended scope(s): project
# "os_compute_api:os-server-tags:update_all": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
