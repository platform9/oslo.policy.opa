package os_compute_api.os_volumes.show

import data.lib

# Show volume.
#
# This API is a proxy call to the Volume service. It is deprecated.
# GET  /os-volumes/{volume_id}
# Intended scope(s): project
#"os_compute_api:os-volumes:show": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

