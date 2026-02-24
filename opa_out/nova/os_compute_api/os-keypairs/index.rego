package os_compute_api.os_keypairs.index

import data.lib

# List all keypairs
# GET  /os-keypairs
# Intended scope(s): project
#"os_compute_api:os-keypairs:index": "(rule:context_is_admin) or user_id:%(user_id)s"


allow if {
  #rule:context_is_admin
lib.context_is_admin
}

allow if {
  #user_id:%(user_id)s
input.credentials.user_id == input.target.user_id
}

