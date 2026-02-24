package os_compute_api.os_volumes.snapshots.detail

import data.lib

# List snapshots details.
#
# This API is a proxy call to the Volume service. It is deprecated.
# GET  /os-snapshots/detail
# Intended scope(s): project
#"os_compute_api:os-volumes:snapshots:detail": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

