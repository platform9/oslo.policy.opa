package os_compute_api.os_volumes.snapshots.detail

import data.nova_lib

# List snapshots details.
#
# This API is a proxy call to the Volume service. It is deprecated.
# GET  /os-snapshots/detail
# Intended scope(s): project
# "os_compute_api:os-volumes:snapshots:detail": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
