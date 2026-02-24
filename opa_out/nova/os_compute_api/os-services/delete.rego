package os_compute_api.os_services.delete

import data.lib

# Delete a Compute service.
# DELETE  /os-services/{service_id}
# Intended scope(s): project
#"os_compute_api:os-services:delete": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

