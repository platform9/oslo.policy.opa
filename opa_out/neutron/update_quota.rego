package update_quota

import data.neutron_lib

# Update a resource quota
# PUT  /quota/{id}
# Intended scope(s): project
# "update_quota": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
