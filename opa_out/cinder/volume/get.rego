package volume.get

import data.lib

# Show volume.
# GET  /volumes/{volume_id}
#"volume:get": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

