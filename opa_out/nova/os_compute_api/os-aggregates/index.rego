package os_compute_api.os_aggregates.index

import data.lib

# List all aggregates
# GET  /os-aggregates
# Intended scope(s): project
#"os_compute_api:os-aggregates:index": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

