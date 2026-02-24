package volume_extension.volume_image_metadata.remove

import data.lib

# Remove specific image metadata from a volume
# POST  /volumes/{volume_id}/action (os-unset_image_metadata)
#"volume_extension:volume_image_metadata:remove": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

