package get_service_provider

# Get service providers
# GET  /service-providers
# Intended scope(s): project
#"get_service_provider": "role:reader"


allow if {
  "reader" in input.credentials.roles
}

