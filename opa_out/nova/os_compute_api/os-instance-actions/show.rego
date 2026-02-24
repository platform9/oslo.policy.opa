package os_compute_api.os_instance_actions.show

import data.lib

# Show action details for a server.
# GET  /servers/{server_id}/os-instance-actions/{request_id}
# Intended scope(s): project
#"os_compute_api:os-instance-actions:show": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

