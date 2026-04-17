package volume_extension.volume_admin_actions.force_detach

import data.cinder_lib

# Force detach a volume.
# POST  /volumes/{volume_id}/action (os-force_detach)
# "volume_extension:volume_admin_actions:force_detach": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
