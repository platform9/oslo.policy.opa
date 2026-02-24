package os_compute_api.os_volumes.create

import data.lib

# Create volume.
#
# This API is a proxy call to the Volume service. It is deprecated.
# POST  /os-volumes
# Intended scope(s): project
#"os_compute_api:os-volumes:create": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

