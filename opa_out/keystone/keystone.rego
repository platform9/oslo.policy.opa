package lib

admin_required if {
 #role:admin
"admin" in input.credentials.roles
}


admin_required if {
 #is_admin:1
input.credentials.is_admin == 1
}


service_role if {
 "service" in input.credentials.roles
}


service_or_admin if {
 #rule:admin_required
admin_required
}


service_or_admin if {
 #rule:service_role
service_role
}


owner if {
 input.credentials.user_id == input.target.user_id
}


admin_or_owner if {
 #rule:admin_required
admin_required
}


admin_or_owner if {
 #rule:owner
owner
}


token_subject if {
 input.credentials.user_id == input.target.target.token.user_id
}


token_subject if {
 input.credentials.user_id == input.target["target.token.user_id"]
}


admin_or_token_subject if {
 #rule:admin_required
admin_required
}


admin_or_token_subject if {
 #rule:token_subject
token_subject
}


service_admin_or_token_subject if {
 #rule:service_or_admin
service_or_admin
}


service_admin_or_token_subject if {
 #rule:token_subject
token_subject
}


domain_managed_target_role if {
 manager_is_input_target_role_name
}


domain_managed_target_role if {
 member_is_input_target_role_name
}


domain_managed_target_role if {
 reader_is_input_target_role_name
}


#'manager':%(target.role.name)s
manager_is_input_target_role_name if {
  "manager" == input.target.target.role.name
}


#'manager':%(target.role.name)s
manager_is_input_target_role_name if {
  "manager" == input.target["target.role.name"]
}


#'member':%(target.role.name)s
member_is_input_target_role_name if {
  "member" == input.target.target.role.name
}


#'member':%(target.role.name)s
member_is_input_target_role_name if {
  "member" == input.target["target.role.name"]
}


#'reader':%(target.role.name)s
reader_is_input_target_role_name if {
  "reader" == input.target.target.role.name
}


#'reader':%(target.role.name)s
reader_is_input_target_role_name if {
  "reader" == input.target["target.role.name"]
}


