package os_compute_api.os_flavor_manage.delete

import data.lib

# Delete a flavor
# DELETE  /flavors/{flavor_id}
# Intended scope(s): project
#"os_compute_api:os-flavor-manage:delete": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

