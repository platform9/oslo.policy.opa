package os_compute_api.os_flavor_extra_specs.delete

import data.lib

# Delete an extra spec for a flavor
# DELETE  /flavors/{flavor_id}/os-extra_specs/{flavor_extra_spec_key}
# Intended scope(s): project
#"os_compute_api:os-flavor-extra-specs:delete": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

