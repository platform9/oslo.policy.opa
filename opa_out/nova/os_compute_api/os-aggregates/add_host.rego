package os_compute_api.os_aggregates.add_host

import data.lib

# Add a host to an aggregate
# POST  /os-aggregates/{aggregate_id}/action (add_host)
# Intended scope(s): project
#"os_compute_api:os-aggregates:add_host": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

