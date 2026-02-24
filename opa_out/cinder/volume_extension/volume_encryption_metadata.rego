package volume_extension.volume_encryption_metadata

import data.lib

# Show volume's encryption metadata.
# GET  /volumes/{volume_id}/encryption
# GET  /volumes/{volume_id}/encryption/{encryption_key}
#"volume_extension:volume_encryption_metadata": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

