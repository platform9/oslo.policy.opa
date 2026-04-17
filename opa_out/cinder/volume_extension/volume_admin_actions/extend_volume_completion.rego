package volume_extension.volume_admin_actions.extend_volume_completion

import data.cinder_lib

# Complete a volume extend operation.
# POST  /volumes/{volume_id}/action (os-extend_volume_completion)
# "volume_extension:volume_admin_actions:extend_volume_completion": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
