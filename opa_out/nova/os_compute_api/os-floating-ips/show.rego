package os_compute_api.os_floating_ips.show

import data.lib

# Show floating IPs. This API is deprecated.
# GET  /os-floating-ips/{floating_ip_id}
# Intended scope(s): project
#"os_compute_api:os-floating-ips:show": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

