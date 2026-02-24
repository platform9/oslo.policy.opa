package os_compute_api.os_shelve.shelve_offload

import data.lib

# Shelf-offload (remove) server
# POST  /servers/{server_id}/action (shelveOffload)
# Intended scope(s): project
#"os_compute_api:os-shelve:shelve_offload": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

