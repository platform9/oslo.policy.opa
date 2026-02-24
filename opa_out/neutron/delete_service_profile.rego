package delete_service_profile

import data.lib

# Delete a service profile
# DELETE  /service_profiles/{id}
# Intended scope(s): project
#"delete_service_profile": "rule:admin_only"


allow if {
  lib.admin_only
}

