package volume_extension.dflt_get_all

import data.lib

# Get all default types. WARNING: Changing this might open up too much
# information regarding cloud deployment.
# GET  /default-types/
#"volume_extension:default_get_all": "rule:admin_api"


allow if {
  lib.admin_api
}

