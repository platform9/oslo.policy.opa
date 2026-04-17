package group.enable_replication

import data.cinder_lib

# Enable replication.
# POST  /groups/{group_id}/action (enable_replication)
# Target attrs: domain_id, project_id, user_id
# "group:enable_replication": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
