package os_compute_api.os_flavor_extra_specs.show

import data.lib

# Show an extra spec for a flavor
# GET  /flavors/{flavor_id}/os-extra_specs/{flavor_extra_spec_key}
# Intended scope(s): project
#"os_compute_api:os-flavor-extra-specs:show": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

