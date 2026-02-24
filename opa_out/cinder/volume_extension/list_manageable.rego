package volume_extension.list_manageable

import data.lib

# List (in detail) of volumes which are available to manage.
# GET  /manageable_volumes
# GET  /manageable_volumes/detail
#"volume_extension:list_manageable": "rule:admin_api"


allow if {
  lib.admin_api
}

