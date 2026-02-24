package os_compute_api.os_volumes.snapshots.show

import data.lib

# Show snapshot.
#
# This API is a proxy call to the Volume service. It is deprecated.
# GET  /os-snapshots/{snapshot_id}
# Intended scope(s): project
#"os_compute_api:os-volumes:snapshots:show": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

