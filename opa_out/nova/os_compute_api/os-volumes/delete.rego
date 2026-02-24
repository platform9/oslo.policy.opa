package os_compute_api.os_volumes.delete

import data.lib

# Delete volume.
#
# This API is a proxy call to the Volume service. It is deprecated.
# DELETE  /os-volumes/{volume_id}
# Intended scope(s): project
#"os_compute_api:os-volumes:delete": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

