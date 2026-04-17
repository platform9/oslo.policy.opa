package clusters.update

import data.cinder_lib

# Update cluster.
# PUT  /clusters/{cluster_id}
# Target attrs: domain_id, project_id, user_id
# "clusters:update": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
