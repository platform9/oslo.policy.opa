package os_compute_api.os_shelve.unshelve_to_host

import data.lib

# Unshelve (restore) shelve offloaded server to a specific host
# POST  /servers/{server_id}/action (unshelve)
# Intended scope(s): project
#"os_compute_api:os-shelve:unshelve_to_host": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

