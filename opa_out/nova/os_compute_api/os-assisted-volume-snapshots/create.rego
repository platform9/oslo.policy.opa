package os_compute_api.os_assisted_volume_snapshots.create

import data.lib

# Create an assisted volume snapshot
# POST  /os-assisted-volume-snapshots
# Intended scope(s): project
#"os_compute_api:os-assisted-volume-snapshots:create": "rule:service_or_admin"


allow if {
  lib.service_or_admin
}

