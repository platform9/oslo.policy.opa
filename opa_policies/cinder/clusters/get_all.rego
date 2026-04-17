package clusters.get_all

import data.cinder_lib

# List clusters.
# GET  /clusters
# GET  /clusters/detail
# Target attrs: domain_id, project_id, user_id
# "clusters:get_all": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
