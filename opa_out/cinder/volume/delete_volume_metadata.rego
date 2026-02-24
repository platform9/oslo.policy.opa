package volume.delete_volume_metadata

import data.lib

# Delete a volume's metadatum with the given key.
# DELETE  /volumes/{volume_id}/metadata/{key}
#"volume:delete_volume_metadata": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

