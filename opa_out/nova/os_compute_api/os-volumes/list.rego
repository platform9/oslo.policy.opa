package os_compute_api.os_volumes.list

import data.lib

# List volumes.
#
# This API is a proxy call to the Volume service. It is deprecated.
# GET  /os-volumes
# Intended scope(s): project
#"os_compute_api:os-volumes:list": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

