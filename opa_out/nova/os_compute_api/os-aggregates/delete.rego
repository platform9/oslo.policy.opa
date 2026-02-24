package os_compute_api.os_aggregates.delete

import data.lib

# Delete an aggregate
# DELETE  /os-aggregates/{aggregate_id}
# Intended scope(s): project
#"os_compute_api:os-aggregates:delete": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

