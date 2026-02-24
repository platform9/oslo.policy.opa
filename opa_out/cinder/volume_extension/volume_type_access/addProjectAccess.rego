package volume_extension.volume_type_access.addProjectAccess

import data.lib

# Add volume type access for project.
# POST  /types/{type_id}/action (addProjectAccess)
#"volume_extension:volume_type_access:addProjectAccess": "rule:admin_api"


allow if {
  lib.admin_api
}

