package os_compute_api.os_floating_ips.delete

import data.lib

# Delete floating IPs. This API is deprecated.
# DELETE  /os-floating-ips/{floating_ip_id}
# Intended scope(s): project
#"os_compute_api:os-floating-ips:delete": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

