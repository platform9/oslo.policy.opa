package snapshot_extension.list_manageable

import data.cinder_lib

# List (in detail) of snapshots which are available to manage.
# GET  /manageable_snapshots
# GET  /manageable_snapshots/detail
# "snapshot_extension:list_manageable": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
