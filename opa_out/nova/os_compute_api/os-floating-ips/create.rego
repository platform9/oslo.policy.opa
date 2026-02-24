package os_compute_api.os_floating_ips.create

import data.lib

# Create floating IPs. This API is deprecated.
# POST  /os-floating-ips
# Intended scope(s): project
#"os_compute_api:os-floating-ips:create": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

