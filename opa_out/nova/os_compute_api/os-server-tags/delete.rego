package os_compute_api.os_server_tags.delete

import data.lib

# Delete a single tag from the specified server
# DELETE  /servers/{server_id}/tags/{tag}
# Intended scope(s): project
#"os_compute_api:os-server-tags:delete": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

