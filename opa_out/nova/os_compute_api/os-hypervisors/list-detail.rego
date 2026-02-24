package os_compute_api.os_hypervisors.list_detail

import data.lib

# List all hypervisors with details
# GET  /os-hypervisors/details
# Intended scope(s): project
#"os_compute_api:os-hypervisors:list-detail": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

