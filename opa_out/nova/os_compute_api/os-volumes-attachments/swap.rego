package os_compute_api.os_volumes_attachments.swap

import data.lib

# Update a volume attachment with a different volumeId
# PUT  /servers/{server_id}/os-volume_attachments/{volume_id}
# Intended scope(s): project
#"os_compute_api:os-volumes-attachments:swap": "rule:service_or_admin"


allow if {
  lib.service_or_admin
}

