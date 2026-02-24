package os_compute_api.os_hypervisors.search

import data.lib

# Search hypervisor by hypervisor_hostname pattern.
# GET  /os-hypervisors/{hypervisor_hostname_pattern}/search
# Intended scope(s): project
#"os_compute_api:os-hypervisors:search": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

