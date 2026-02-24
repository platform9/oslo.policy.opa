package os_compute_api.os_hypervisors.show

import data.lib

# Show details for a hypervisor.
# GET  /os-hypervisors/{hypervisor_id}
# Intended scope(s): project
#"os_compute_api:os-hypervisors:show": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

