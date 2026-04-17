package snapshot_extension.snapshot_manage

import data.cinder_lib

# Manage an existing snapshot.
# POST  /manageable_snapshots
# "snapshot_extension:snapshot_manage": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
