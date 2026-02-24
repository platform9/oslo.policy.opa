package os_compute_api.os_volumes.snapshots.create

import data.lib

# Create snapshots.
#
# This API is a proxy call to the Volume service. It is deprecated.
# POST  /os-snapshots
# Intended scope(s): project
#"os_compute_api:os-volumes:snapshots:create": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

