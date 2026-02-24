package update_service_profile

import data.lib

# Update a service profile
# PUT  /service_profiles/{id}
# Intended scope(s): project
#"update_service_profile": "rule:admin_only"


allow if {
  lib.admin_only
}

