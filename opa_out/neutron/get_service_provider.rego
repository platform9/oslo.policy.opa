package get_service_provider

# Get service providers
# GET  /service-providers
# Intended scope(s): project
# Target attrs: default, domain_id, name, service_type
# "get_service_provider": "role:reader"

allow if {
	"reader" in input.credentials.roles
}
