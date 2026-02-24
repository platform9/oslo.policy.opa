package volume.create_from_image

import data.lib

# Create volume from image.
# POST  /volumes
#"volume:create_from_image": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

