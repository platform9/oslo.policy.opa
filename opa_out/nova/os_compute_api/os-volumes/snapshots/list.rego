package os_compute_api.os_volumes.snapshots.list

import data.lib

# List snapshots.
#
# This API is a proxy call to the Volume service. It is deprecated.
# GET  /os-snapshots
# Intended scope(s): project
#"os_compute_api:os-volumes:snapshots:list": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

