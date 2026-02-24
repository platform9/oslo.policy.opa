package os_compute_api.ips.show

import data.lib

# Show IP addresses details for a network label of a  server
# GET  /servers/{server_id}/ips/{network_label}
# Intended scope(s): project
#"os_compute_api:ips:show": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

