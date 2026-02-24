package create_service_profile

import data.lib

# Create a service profile
# POST  /service_profiles
# Intended scope(s): project
#"create_service_profile": "rule:admin_only"


allow if {
  lib.admin_only
}

