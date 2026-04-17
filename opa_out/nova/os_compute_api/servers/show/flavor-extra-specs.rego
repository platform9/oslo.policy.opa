package os_compute_api.servers.show.flavor_extra_specs

import data.nova_lib

# Starting with microversion 2.47, the flavor and its extra specs used
# for a server is also returned in the response when showing server
# details, updating a server or rebuilding a server.
# GET  /servers/detail
# GET  /servers/{server_id}
# PUT  /servers/{server_id}
# POST  /servers/{server_id}/action (rebuild)
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:show:flavor-extra-specs": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
