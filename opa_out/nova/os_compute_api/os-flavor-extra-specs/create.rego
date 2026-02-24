package os_compute_api.os_flavor_extra_specs.create

import data.lib

# Create extra specs for a flavor
# POST  /flavors/{flavor_id}/os-extra_specs/
# Intended scope(s): project
#"os_compute_api:os-flavor-extra-specs:create": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

