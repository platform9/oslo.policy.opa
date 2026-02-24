package volume.update_volume_metadata

import data.lib

# Replace a volume's metadata dictionary or update a single metadatum
# with a given key.
# PUT  /volumes/{volume_id}/metadata
# PUT  /volumes/{volume_id}/metadata/{key}
#"volume:update_volume_metadata": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

