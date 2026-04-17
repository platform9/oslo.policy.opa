package volume_extension.quotas.delete

import data.cinder_lib

# Delete project quota.
# DELETE  /os-quota-sets/{project_id}
# "volume_extension:quotas:delete": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
