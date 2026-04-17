package create_flavor

import data.neutron_lib

# Create a flavor
# POST  /flavors
# Intended scope(s): project
# Target attrs: description, domain_id, enabled, id, name, service_profiles, service_type
# "create_flavor": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
