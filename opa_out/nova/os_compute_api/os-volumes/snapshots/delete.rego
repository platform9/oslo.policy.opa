package os_compute_api.os_volumes.snapshots.delete

import data.lib

# Delete snapshot.
#
# This API is a proxy call to the Volume service. It is deprecated.
# DELETE  /os-snapshots/{snapshot_id}
# Intended scope(s): project
#"os_compute_api:os-volumes:snapshots:delete": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

