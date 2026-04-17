package create_flavor_service_profile

import data.neutron_lib

# Associate a flavor with a service profile
# POST  /flavors/{flavor_id}/service_profiles
# Intended scope(s): project
# "create_flavor_service_profile": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
