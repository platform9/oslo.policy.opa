package os_compute_api.servers.create.attach_volume

import data.nova_lib

# Create a server with the requested volume attached to it
# POST  /servers
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:create:attach_volume": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
