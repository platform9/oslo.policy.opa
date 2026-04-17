package os_compute_api.os_volumes_attachments.index

import data.nova_lib

# List volume attachments for an instance
# GET  /servers/{server_id}/os-volume_attachments
# Intended scope(s): project
# "os_compute_api:os-volumes-attachments:index": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
