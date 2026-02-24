package os_compute_api.os_hypervisors.servers

import data.lib

# List all servers on hypervisors that can match the provided
# hypervisor_hostname pattern.
# GET  /os-hypervisors/{hypervisor_hostname_pattern}/servers
# Intended scope(s): project
#"os_compute_api:os-hypervisors:servers": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

