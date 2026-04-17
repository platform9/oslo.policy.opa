package volume_extension.list_manageable

import data.cinder_lib

# List (in detail) of volumes which are available to manage.
# GET  /manageable_volumes
# GET  /manageable_volumes/detail
# "volume_extension:list_manageable": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
