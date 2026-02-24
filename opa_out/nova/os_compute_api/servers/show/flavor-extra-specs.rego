package os_compute_api.servers.show.flavor_extra_specs

import data.lib

# Starting with microversion 2.47, the flavor and its extra specs used
# for a server is also returned in the response when showing server
# details, updating a server or rebuilding a server.
# GET  /servers/detail
# GET  /servers/{server_id}
# PUT  /servers/{server_id}
# POST  /servers/{server_id}/action (rebuild)
# Intended scope(s): project
#"os_compute_api:servers:show:flavor-extra-specs": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

