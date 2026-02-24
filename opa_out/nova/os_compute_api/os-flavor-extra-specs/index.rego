package os_compute_api.os_flavor_extra_specs.index

import data.lib

# List extra specs for a flavor. Starting with microversion 2.61,
# extra specs may be returned in responses for the flavor resource.
# GET  /flavors/{flavor_id}/os-extra_specs/
# POST  /flavors
# GET  /flavors/detail
# GET  /flavors/{flavor_id}
# PUT  /flavors/{flavor_id}
# Intended scope(s): project
#"os_compute_api:os-flavor-extra-specs:index": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

