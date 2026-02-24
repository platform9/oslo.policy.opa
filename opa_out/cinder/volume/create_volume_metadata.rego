package volume.create_volume_metadata

import data.lib

# Create volume metadata.
# POST  /volumes/{volume_id}/metadata
#"volume:create_volume_metadata": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

