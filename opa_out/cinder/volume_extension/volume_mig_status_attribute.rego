package volume_extension.volume_mig_status_attribute

import data.lib

# List or show volume with migration status attribute.
# GET  /volumes/{volume_id}
# GET  /volumes/detail
#"volume_extension:volume_mig_status_attribute": "rule:admin_api"


allow if {
  lib.admin_api
}

