package group.disable_replication

import data.cinder_lib

# Disable replication.
# POST  /groups/{group_id}/action (disable_replication)
# Target attrs: domain_id, project_id, user_id
# "group:disable_replication": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
