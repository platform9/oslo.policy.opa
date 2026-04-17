package os_compute_api.os_volumes_attachments.swap

import data.nova_lib

# Update a volume attachment with a different volumeId
# PUT  /servers/{server_id}/os-volume_attachments/{volume_id}
# Intended scope(s): project
# "os_compute_api:os-volumes-attachments:swap": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
