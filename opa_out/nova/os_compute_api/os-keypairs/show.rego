package os_compute_api.os_keypairs.show

import data.lib

# Show details of a keypair
# GET  /os-keypairs/{keypair_name}
# Intended scope(s): project
#"os_compute_api:os-keypairs:show": "(rule:context_is_admin) or user_id:%(user_id)s"


allow if {
  #rule:context_is_admin
lib.context_is_admin
}

allow if {
  #user_id:%(user_id)s
input.credentials.user_id == input.target.user_id
}

