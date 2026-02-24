package os_compute_api.os_aggregates.remove_host

import data.lib

# Remove a host from an aggregate
# POST  /os-aggregates/{aggregate_id}/action (remove_host)
# Intended scope(s): project
#"os_compute_api:os-aggregates:remove_host": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

