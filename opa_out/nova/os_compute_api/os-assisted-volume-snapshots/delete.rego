package os_compute_api.os_assisted_volume_snapshots.delete

import data.lib

# Delete an assisted volume snapshot
# DELETE  /os-assisted-volume-snapshots/{snapshot_id}
# Intended scope(s): project
#"os_compute_api:os-assisted-volume-snapshots:delete": "rule:service_or_admin"


allow if {
  lib.service_or_admin
}

