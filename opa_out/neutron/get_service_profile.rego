package get_service_profile

import data.neutron_lib

# Get a service profile
# GET  /service_profiles
# GET  /service_profiles/{id}
# Intended scope(s): project
# Target attrs: description, domain_id, driver, enabled, id, metainfo
# "get_service_profile": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
