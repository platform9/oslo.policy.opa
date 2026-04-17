package workers.cleanup

import data.cinder_lib

# Clean up workers.
# POST  /workers/cleanup
# "workers:cleanup": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
