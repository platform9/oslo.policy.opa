package create_subnet

import data.lib

# Create a subnet
# POST  /subnets
# Intended scope(s): project
#"create_subnet": "(rule:admin_only) or (role:member and rule:network_owner)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  member_and_network_owner
}

#(role:member and rule:network_owner)
member_and_network_owner if {
  "member" in input.credentials.roles
  lib.network_owner
}

