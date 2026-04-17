package os_compute_api.os_volumes.snapshots.list

import data.nova_lib

# List snapshots.
#
# This API is a proxy call to the Volume service. It is deprecated.
# GET  /os-snapshots
# Intended scope(s): project
# "os_compute_api:os-volumes:snapshots:list": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
