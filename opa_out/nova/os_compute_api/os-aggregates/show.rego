package os_compute_api.os_aggregates.show

import data.lib

# Show details for an aggregate
# GET  /os-aggregates/{aggregate_id}
# Intended scope(s): project
#"os_compute_api:os-aggregates:show": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

