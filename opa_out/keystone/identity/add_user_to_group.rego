package identity.add_user_to_group

import data.lib

# Add user to group.
# PUT  /v3/groups/{group_id}/users/{user_id}
# Intended scope(s): system, domain, project
#"identity:add_user_to_group": "(rule:admin_required) or (role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.user.domain_id)s)"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id
}

#domain_id:%(target.group.domain_id)s
creds_domain_id_eq_input_target_group_domain_id if {
  input.credentials.domain_id == input.target.target.group.domain_id
}

#domain_id:%(target.group.domain_id)s
creds_domain_id_eq_input_target_group_domain_id if {
  input.credentials.domain_id == input.target["target.group.domain_id"]
}

#domain_id:%(target.user.domain_id)s
creds_domain_id_eq_input_target_user_domain_id if {
  input.credentials.domain_id == input.target.target.user.domain_id
}

#domain_id:%(target.user.domain_id)s
creds_domain_id_eq_input_target_user_domain_id if {
  input.credentials.domain_id == input.target["target.user.domain_id"]
}

#(role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.user.domain_id)s)
manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id if {
  "manager" in input.credentials.roles
  creds_domain_id_eq_input_target_group_domain_id
  creds_domain_id_eq_input_target_user_domain_id
}

