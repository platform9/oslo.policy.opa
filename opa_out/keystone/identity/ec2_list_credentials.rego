package identity.ec2_list_credentials

import data.lib

# List ec2 credentials.
# GET  /v3/users/{user_id}/credentials/OS-EC2
# Intended scope(s): system, project
#"identity:ec2_list_credentials": "(rule:admin_required) or (role:reader and system_scope:all) or rule:owner"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all
}

allow if {
  #rule:owner
lib.owner
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

