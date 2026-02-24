package get_flavor

# Get a flavor
# GET  /flavors
# GET  /flavors/{id}
# Intended scope(s): project
#"get_flavor": "role:reader"


allow if {
  "reader" in input.credentials.roles
}

