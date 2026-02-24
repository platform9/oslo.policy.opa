package os_compute_api.os_volumes.detail

import data.lib

# List volumes detail.
#
# This API is a proxy call to the Volume service. It is deprecated.
# GET  /os-volumes/detail
# Intended scope(s): project
#"os_compute_api:os-volumes:detail": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

