package group.group_snapshot_project_attribute

import data.cinder_lib

# List group snapshots or show group snapshot with project attributes.
# GET  /group_snapshots/{group_snapshot_id}
# GET  /group_snapshots/detail
# Target attrs: domain_id, project_id, user_id
# "group:group_snapshot_project_attribute": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
