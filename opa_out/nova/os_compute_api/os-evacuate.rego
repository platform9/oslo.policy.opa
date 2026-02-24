package os_compute_api.os_evacuate

import data.lib

# Evacuate a server from a failed host to a new host
# POST  /servers/{server_id}/action (evacuate)
# Intended scope(s): project
#"os_compute_api:os-evacuate": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

