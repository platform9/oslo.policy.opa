package os_compute_api.os_flavor_extra_specs.update

import data.lib

# Update an extra spec for a flavor
# PUT  /flavors/{flavor_id}/os-extra_specs/{flavor_extra_spec_key}
# Intended scope(s): project
#"os_compute_api:os-flavor-extra-specs:update": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

