package delete_flavor

import data.neutron_lib

# Delete a flavor
# DELETE  /flavors/{id}
# Intended scope(s): project
# Target attrs: description, domain_id, enabled, id, name, service_profiles, service_type
# "delete_flavor": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
