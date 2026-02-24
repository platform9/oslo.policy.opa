package os_compute_api.os_volumes_attachments.update

import data.lib

# Update a volume attachment. New 'update' policy about 'swap +
# update' request (which is possible only >2.85) only <swap policy> is
# checked. We expect <swap policy> to be always superset of this
# policy permission.
# PUT  /servers/{server_id}/os-volume_attachments/{volume_id}
# Intended scope(s): project
#"os_compute_api:os-volumes-attachments:update": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

