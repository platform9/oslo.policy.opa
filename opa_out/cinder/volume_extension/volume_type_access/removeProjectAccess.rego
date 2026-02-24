package volume_extension.volume_type_access.removeProjectAccess

import data.lib

# Remove volume type access for project.
# POST  /types/{type_id}/action (removeProjectAccess)
#"volume_extension:volume_type_access:removeProjectAccess": "rule:admin_api"


allow if {
  lib.admin_api
}

