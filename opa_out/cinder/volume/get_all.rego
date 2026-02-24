package volume.get_all

import data.lib

# List volumes or get summary of volumes.
# GET  /volumes
# GET  /volumes/detail
# GET  /volumes/summary
#"volume:get_all": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

