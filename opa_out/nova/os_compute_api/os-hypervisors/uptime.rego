package os_compute_api.os_hypervisors.uptime

import data.lib

# Show the uptime of a hypervisor.
# GET  /os-hypervisors/{hypervisor_id}/uptime
# Intended scope(s): project
#"os_compute_api:os-hypervisors:uptime": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

