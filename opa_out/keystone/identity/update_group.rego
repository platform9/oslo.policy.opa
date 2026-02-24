package identity.update_group

import data.lib

# Update group.
# PATCH  /v3/groups/{group_id}
# Intended scope(s): system, domain, project
#"identity:update_group": "(rule:admin_required) or (role:manager and domain_id:%(target.group.domain_id)s)"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  manager_and_creds_domain_id_eq_input_target_group_domain_id
}

#domain_id:%(target.group.domain_id)s
creds_domain_id_eq_input_target_group_domain_id if {
  input.credentials.domain_id == input.target.target.group.domain_id
}

#domain_id:%(target.group.domain_id)s
creds_domain_id_eq_input_target_group_domain_id if {
  input.credentials.domain_id == input.target["target.group.domain_id"]
}

#(role:manager and domain_id:%(target.group.domain_id)s)
manager_and_creds_domain_id_eq_input_target_group_domain_id if {
  "manager" in input.credentials.roles
  creds_domain_id_eq_input_target_group_domain_id
}

