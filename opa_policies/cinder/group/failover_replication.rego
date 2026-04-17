package group.failover_replication

import data.cinder_lib

# Fail over replication.
# POST  /groups/{group_id}/action (failover_replication)
# Target attrs: domain_id, project_id, user_id
# "group:failover_replication": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
