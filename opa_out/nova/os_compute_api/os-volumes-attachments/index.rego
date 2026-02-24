package os_compute_api.os_volumes_attachments.index

import data.lib

# List volume attachments for an instance
# GET  /servers/{server_id}/os-volume_attachments
# Intended scope(s): project
#"os_compute_api:os-volumes-attachments:index": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

