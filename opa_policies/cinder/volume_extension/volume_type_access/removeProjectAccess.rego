package volume_extension.volume_type_access.removeProjectAccess

import data.cinder_lib

# Remove volume type access for project.
# POST  /types/{type_id}/action (removeProjectAccess)
# "volume_extension:volume_type_access:removeProjectAccess": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
