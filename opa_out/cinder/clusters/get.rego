package clusters.get

import data.cinder_lib

# Show cluster.
# GET  /clusters/{cluster_id}
# Target attrs: domain_id, project_id, user_id
# "clusters:get": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
