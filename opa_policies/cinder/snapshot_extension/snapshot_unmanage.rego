package snapshot_extension.snapshot_unmanage

import data.cinder_lib

# Stop managing a snapshot.
# POST  /snapshots/{snapshot_id}/action (os-unmanage)
# "snapshot_extension:snapshot_unmanage": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
