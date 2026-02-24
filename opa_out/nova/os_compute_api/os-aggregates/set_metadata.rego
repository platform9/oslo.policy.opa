package os_compute_api.os_aggregates.set_metadata

import data.lib

# Create or replace metadata for an aggregate
# POST  /os-aggregates/{aggregate_id}/action (set_metadata)
# Intended scope(s): project
#"os_compute_api:os-aggregates:set_metadata": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

