package create_service_profile

import data.neutron_lib

# Create a service profile
# POST  /service_profiles
# Intended scope(s): project
# Target attrs: description, domain_id, driver, enabled, id, metainfo
# "create_service_profile": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
