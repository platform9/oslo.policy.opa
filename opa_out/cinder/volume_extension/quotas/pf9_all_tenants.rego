package volume_extension.quotas.pf9_all_tenants

import data.cinder_lib

# Get all PF9 tenant list
# GET  /os-quota-sets/pf9_all_tenants
# "volume_extension:quotas:pf9_all_tenants": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
