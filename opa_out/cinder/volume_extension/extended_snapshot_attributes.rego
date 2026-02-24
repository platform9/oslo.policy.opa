package volume_extension.extended_snapshot_attributes

import data.lib

# List or show snapshots with extended attributes.
# GET  /snapshots/{snapshot_id}
# GET  /snapshots/detail
#"volume_extension:extended_snapshot_attributes": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

