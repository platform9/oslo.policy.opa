package os_compute_api.os_server_groups.show

import data.lib

# Show details of a server group
# GET  /os-server-groups/{server_group_id}
# Intended scope(s): project
#"os_compute_api:os-server-groups:show": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

