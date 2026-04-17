package group.list_replication_targets

import data.cinder_lib

# List failover replication.
# POST  /groups/{group_id}/action (list_replication_targets)
# Target attrs: domain_id, project_id, user_id
# "group:list_replication_targets": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
