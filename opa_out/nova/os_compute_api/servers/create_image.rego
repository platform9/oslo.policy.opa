package os_compute_api.servers.create_image

import data.nova_lib

# Create an image from a server
# POST  /servers/{server_id}/action (createImage)
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:create_image": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
