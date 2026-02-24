package os_compute_api.os_deferred_delete.restore

import data.lib

# Restore a soft deleted server
# POST  /servers/{server_id}/action (restore)
# Intended scope(s): project
#"os_compute_api:os-deferred-delete:restore": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

