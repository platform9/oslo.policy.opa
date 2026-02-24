package os_compute_api.servers.create_image.allow_volume_backed

import data.lib

# Create an image from a volume backed server
# POST  /servers/{server_id}/action (createImage)
# Intended scope(s): project
#"os_compute_api:servers:create_image:allow_volume_backed": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

