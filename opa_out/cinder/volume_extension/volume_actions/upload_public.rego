package volume_extension.volume_actions.upload_public

import data.lib

# Upload a volume to image with public visibility.
# POST  /volumes/{volume_id}/action (os-volume_upload_image)
#"volume_extension:volume_actions:upload_public": "rule:admin_api"


allow if {
  lib.admin_api
}

