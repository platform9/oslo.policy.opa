package volume.update_volume_admin_metadata

import data.lib

# Update volume admin metadata. This permission is required to
# complete these API calls, though the ability to make these calls is
# governed by other policies.
# POST  /volumes/{volume_id}/action (os-update_readonly_flag)
# POST  /volumes/{volume_id}/action (os-attach)
#"volume:update_volume_admin_metadata": "rule:admin_api"


allow if {
  lib.admin_api
}

