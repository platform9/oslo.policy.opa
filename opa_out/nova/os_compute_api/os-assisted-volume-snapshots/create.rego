package os_compute_api.os_assisted_volume_snapshots.create

import data.nova_lib

# Create an assisted volume snapshot
# POST  /os-assisted-volume-snapshots
# Intended scope(s): project
# "os_compute_api:os-assisted-volume-snapshots:create": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
