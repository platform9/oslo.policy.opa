package volume_extension.snapshot_admin_actions.reset_status

import data.cinder_lib

# Reset status of a snapshot.
# POST  /snapshots/{snapshot_id}/action (os-reset_status)
# "volume_extension:snapshot_admin_actions:reset_status": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
