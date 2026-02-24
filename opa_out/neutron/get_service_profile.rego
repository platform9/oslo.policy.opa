package get_service_profile

import data.lib

# Get a service profile
# GET  /service_profiles
# GET  /service_profiles/{id}
# Intended scope(s): project
#"get_service_profile": "rule:admin_only"


allow if {
  lib.admin_only
}

