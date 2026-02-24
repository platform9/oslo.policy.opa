package volume.get_volume_metadata

import data.lib

# Show volume's metadata or one specified metadata with a given key.
# GET  /volumes/{volume_id}/metadata
# GET  /volumes/{volume_id}/metadata/{key}
# POST  /volumes/{volume_id}/action  (os-show_image_metadata)
#"volume:get_volume_metadata": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

