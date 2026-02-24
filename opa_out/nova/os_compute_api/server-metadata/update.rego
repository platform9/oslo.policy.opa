package os_compute_api.server_metadata.update

import data.lib

# Update metadata from a server
# PUT  /servers/{server_id}/metadata/{key}
# Intended scope(s): project
#"os_compute_api:server-metadata:update": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

