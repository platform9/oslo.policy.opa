package os_compute_api.os_keypairs.delete

import data.lib

# Delete a keypair
# DELETE  /os-keypairs/{keypair_name}
# Intended scope(s): project
#"os_compute_api:os-keypairs:delete": "(rule:context_is_admin) or user_id:%(user_id)s"


allow if {
  #rule:context_is_admin
lib.context_is_admin
}

allow if {
  #user_id:%(user_id)s
input.credentials.user_id == input.target.user_id
}

