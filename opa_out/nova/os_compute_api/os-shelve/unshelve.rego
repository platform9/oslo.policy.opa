package os_compute_api.os_shelve.unshelve

import data.lib

# Unshelve (restore) shelved server
# POST  /servers/{server_id}/action (unshelve)
# Intended scope(s): project
#"os_compute_api:os-shelve:unshelve": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

