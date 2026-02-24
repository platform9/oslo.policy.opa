package volume_extension.volume_host_attribute

import data.lib

# List or show volume with host attribute.
# GET  /volumes/{volume_id}
# GET  /volumes/detail
#"volume_extension:volume_host_attribute": "rule:admin_api"


allow if {
  lib.admin_api
}

