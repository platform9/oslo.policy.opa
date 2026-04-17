package volume_extension.volume_unmanage

import data.cinder_lib

# Stop managing a volume.
# POST  /volumes/{volume_id}/action (os-unmanage)
# "volume_extension:volume_unmanage": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
