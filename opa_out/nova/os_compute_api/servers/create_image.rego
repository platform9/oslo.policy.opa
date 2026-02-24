package os_compute_api.servers.create_image

import data.lib

# Create an image from a server
# POST  /servers/{server_id}/action (createImage)
# Intended scope(s): project
#"os_compute_api:servers:create_image": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

