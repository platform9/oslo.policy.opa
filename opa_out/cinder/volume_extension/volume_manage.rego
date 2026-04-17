package volume_extension.volume_manage

import data.cinder_lib

# Manage existing volumes.
# POST  /manageable_volumes
# "volume_extension:volume_manage": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
