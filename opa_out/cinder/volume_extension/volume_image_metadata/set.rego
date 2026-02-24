package volume_extension.volume_image_metadata.set

import data.lib

# Set image metadata for a volume
# POST  /volumes/{volume_id}/action (os-set_image_metadata)
#"volume_extension:volume_image_metadata:set": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

