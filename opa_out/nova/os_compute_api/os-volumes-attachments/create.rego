package os_compute_api.os_volumes_attachments.create

import data.lib

# Attach a volume to an instance
# POST  /servers/{server_id}/os-volume_attachments
# Intended scope(s): project
#"os_compute_api:os-volumes-attachments:create": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

