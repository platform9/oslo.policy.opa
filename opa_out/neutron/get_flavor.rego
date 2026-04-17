package get_flavor

# Get a flavor
# GET  /flavors
# GET  /flavors/{id}
# Intended scope(s): project
# Target attrs: description, domain_id, enabled, id, name, service_profiles, service_type
# "get_flavor": "role:reader"

allow if {
	"reader" in input.credentials.roles
}
