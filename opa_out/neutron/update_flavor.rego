package update_flavor

import data.neutron_lib

# Update a flavor
# PUT  /flavors/{id}
# Intended scope(s): project
# Target attrs: description, domain_id, enabled, id, name, service_profiles, service_type
# "update_flavor": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
