package os_compute_api.os_server_groups.index.all_projects

import data.lib

# List all server groups for all projects
# GET  /os-server-groups
# Intended scope(s): project
#"os_compute_api:os-server-groups:index:all_projects": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

