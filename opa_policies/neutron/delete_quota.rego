package delete_quota

import data.neutron_lib

# Delete a resource quota
# DELETE  /quota/{id}
# Intended scope(s): project
# "delete_quota": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
