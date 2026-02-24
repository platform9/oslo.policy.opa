package os_compute_api.server_metadata.delete

import data.lib

# Delete metadata from a server
# DELETE  /servers/{server_id}/metadata/{key}
# Intended scope(s): project
#"os_compute_api:server-metadata:delete": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

