package os_compute_api.os_server_tags.update

import data.lib

# Add a single tag to the server if server has no specified tag
# PUT  /servers/{server_id}/tags/{tag}
# Intended scope(s): project
#"os_compute_api:os-server-tags:update": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

