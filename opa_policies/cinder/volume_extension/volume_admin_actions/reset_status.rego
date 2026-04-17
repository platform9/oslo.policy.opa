package volume_extension.volume_admin_actions.reset_status

import data.cinder_lib

# Reset status of a volume.
# POST  /volumes/{volume_id}/action (os-reset_status)
# "volume_extension:volume_admin_actions:reset_status": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
