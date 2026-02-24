package os_compute_api.os_floating_ips.list

import data.lib

# List floating IPs. This API is deprecated.
# GET  /os-floating-ips
# Intended scope(s): project
#"os_compute_api:os-floating-ips:list": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

