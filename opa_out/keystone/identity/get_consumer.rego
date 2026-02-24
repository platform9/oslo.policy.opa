package identity.get_consumer

import data.lib

# Show OAUTH1 consumer details.
# GET  /v3/OS-OAUTH1/consumers/{consumer_id}
# Intended scope(s): system, project
#"identity:get_consumer": "rule:admin_required or (role:reader and system_scope:all)"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

