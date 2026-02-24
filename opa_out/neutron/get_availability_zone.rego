package get_availability_zone

# List availability zones
# GET  /availability_zones
# Intended scope(s): project
#"get_availability_zone": "role:reader"


allow if {
  "reader" in input.credentials.roles
}

