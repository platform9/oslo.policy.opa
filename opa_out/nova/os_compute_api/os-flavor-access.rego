package os_compute_api.os_flavor_access

import data.lib

# List flavor access information
#
# Allows access to the full list of tenants that have access to a
# flavor via an os-flavor-access API.
# GET  /flavors/{flavor_id}/os-flavor-access
# Intended scope(s): project
#"os_compute_api:os-flavor-access": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

