package os_compute_api.server_metadata.create

import data.lib

# Create metadata for a server
# POST  /servers/{server_id}/metadata
# Intended scope(s): project
#"os_compute_api:server-metadata:create": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

