package volume_extension.volume_type_access.get_all_for_type

import data.lib

# List private volume type access detail, that is, list the projects
# that have access to this volume type.
# GET  /types/{type_id}/os-volume-type-access
#"volume_extension:volume_type_access:get_all_for_type": "rule:admin_api"


allow if {
  lib.admin_api
}

