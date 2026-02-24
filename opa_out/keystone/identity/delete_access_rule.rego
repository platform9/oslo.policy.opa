package identity.delete_access_rule

# Delete an access_rule.
# DELETE  /v3/users/{user_id}/access_rules/{access_rule_id}
# Intended scope(s): system, project
#"identity:delete_access_rule": "(role:admin and system_scope:all) or user_id:%(target.user.id)s"


allow if {
  admin_and_creds_system_scope_eq_all
}

allow if {
  creds_user_id_eq_input_target_user_id
}

#(role:admin and system_scope:all)
admin_and_creds_system_scope_eq_all if {
  "admin" in input.credentials.roles
  input.credentials.system_scope == "all"
}

#user_id:%(target.user.id)s
creds_user_id_eq_input_target_user_id if {
  input.credentials.user_id == input.target.target.user.id
}

#user_id:%(target.user.id)s
creds_user_id_eq_input_target_user_id if {
  input.credentials.user_id == input.target["target.user.id"]
}

