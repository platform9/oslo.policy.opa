package volume_extension.volume_unmanage

import data.lib

# Stop managing a volume.
# POST  /volumes/{volume_id}/action (os-unmanage)
#"volume_extension:volume_unmanage": "rule:admin_api"


allow if {
  lib.admin_api
}

