package os_compute_api.os_volumes_attachments.show

import data.lib

# Show details of a volume attachment
# GET  /servers/{server_id}/os-volume_attachments/{volume_id}
# Intended scope(s): project
#"os_compute_api:os-volumes-attachments:show": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

