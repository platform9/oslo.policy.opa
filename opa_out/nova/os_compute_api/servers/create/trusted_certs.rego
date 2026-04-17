package os_compute_api.servers.create.trusted_certs

import data.nova_lib

# Create a server with trusted image certificate IDs
# POST  /servers
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:create:trusted_certs": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
