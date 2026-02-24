package os_compute_api.os_flavor_manage.update

import data.lib

# Update a flavor
# PUT  /flavors/{flavor_id}
# Intended scope(s): project
#"os_compute_api:os-flavor-manage:update": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

