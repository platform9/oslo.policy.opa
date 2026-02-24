package os_compute_api.os_volumes_attachments.delete

import data.lib

# Detach a volume from an instance
# DELETE  /servers/{server_id}/os-volume_attachments/{volume_id}
# Intended scope(s): project
#"os_compute_api:os-volumes-attachments:delete": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

