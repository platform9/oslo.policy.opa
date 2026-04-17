package get_availability_zone

# List availability zones
# GET  /availability_zones
# Intended scope(s): project
# Target attrs: domain_id, name, resource, state
# "get_availability_zone": "role:reader"

allow if {
	"reader" in input.credentials.roles
}
