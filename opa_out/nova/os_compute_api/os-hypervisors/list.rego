package os_compute_api.os_hypervisors.list

import data.lib

# List all hypervisors.
# GET  /os-hypervisors
# Intended scope(s): project
#"os_compute_api:os-hypervisors:list": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

