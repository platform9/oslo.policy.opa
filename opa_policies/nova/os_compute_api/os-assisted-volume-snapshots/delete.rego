package os_compute_api.os_assisted_volume_snapshots.delete

import data.nova_lib

# Delete an assisted volume snapshot
# DELETE  /os-assisted-volume-snapshots/{snapshot_id}
# Intended scope(s): project
# "os_compute_api:os-assisted-volume-snapshots:delete": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
