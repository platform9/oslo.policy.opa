package keystone_lib

admin_required if {
	# role:admin
	"admin" in input.credentials.roles
}

admin_required if {
	# is_admin:1
	input.credentials.is_admin == 1
}

service_role if {
	"service" in input.credentials.roles
}

service_or_admin if {
	# rule:admin_required
	admin_required
}

service_or_admin if {
	# rule:service_role
	service_role
}

owner if {
	input.credentials.user_id == input.target.user_id
}

admin_or_owner if {
	# rule:admin_required
	admin_required
}

admin_or_owner if {
	# rule:owner
	owner
}

token_subject if {
	input.credentials.user_id == input.target["target.token.user_id"]
}

admin_or_token_subject if {
	# rule:admin_required
	admin_required
}

admin_or_token_subject if {
	# rule:token_subject
	token_subject
}

service_admin_or_token_subject if {
	# rule:service_or_admin
	service_or_admin
}

service_admin_or_token_subject if {
	# rule:token_subject
	token_subject
}

domain_manager_grant if {
	is_domain_manager
	is_domain_user_project_grant_or_is_domain_group_project_grant_or_is_domain_level_group_grant_or_is_domain_level_user_grant
}

# (rule:is_domain_user_project_grant or rule:is_domain_group_project_grant or rule:is_domain_level_group_grant or rule:is_domain_level_user_grant)
is_domain_user_project_grant_or_is_domain_group_project_grant_or_is_domain_level_group_grant_or_is_domain_level_user_grant if {
	# rule:is_domain_user_project_grant
	is_domain_user_project_grant
}

# (rule:is_domain_user_project_grant or rule:is_domain_group_project_grant or rule:is_domain_level_group_grant or rule:is_domain_level_user_grant)
is_domain_user_project_grant_or_is_domain_group_project_grant_or_is_domain_level_group_grant_or_is_domain_level_user_grant if {
	# rule:is_domain_group_project_grant
	is_domain_group_project_grant
}

# (rule:is_domain_user_project_grant or rule:is_domain_group_project_grant or rule:is_domain_level_group_grant or rule:is_domain_level_user_grant)
is_domain_user_project_grant_or_is_domain_group_project_grant_or_is_domain_level_group_grant_or_is_domain_level_user_grant if {
	# rule:is_domain_level_group_grant
	is_domain_level_group_grant
}

# (rule:is_domain_user_project_grant or rule:is_domain_group_project_grant or rule:is_domain_level_group_grant or rule:is_domain_level_user_grant)
is_domain_user_project_grant_or_is_domain_group_project_grant_or_is_domain_level_group_grant_or_is_domain_level_user_grant if {
	# rule:is_domain_level_user_grant
	is_domain_level_user_grant
}

base_check_grant if {
	reader_and_creds_system_scope_eq_all
}

base_check_grant if {
	reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s)
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.user.domain_id"]
	input.credentials.domain_id == input.target["target.project.domain_id"]
}

# (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s)
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.user.domain_id"]
	input.credentials.domain_id == input.target["target.domain.id"]
}

# (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s)
reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
	input.credentials.domain_id == input.target["target.project.domain_id"]
}

# (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)
reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
	input.credentials.domain_id == input.target["target.domain.id"]
}

# ((role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

# ((role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

# ((role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

# ((role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

# (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s)
creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
	# domain_id:%(target.role.domain_id)s
	input.credentials.domain_id == input.target["target.role.domain_id"]
}

# (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s)
creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
	# None:%(target.role.domain_id)s
	is_null(input.target["target.role.domain_id"])
}

# (((role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)) and (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s))
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
	reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
	creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty
}

base_remove_user_from_group if {
	admin_and_creds_system_scope_eq_all
}

base_remove_user_from_group if {
	admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id
}

# (role:admin and system_scope:all)
admin_and_creds_system_scope_eq_all if {
	"admin" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.user.domain_id)s)
admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
	input.credentials.domain_id == input.target["target.user.domain_id"]
}

base_revoke_grant if {
	admin_and_creds_system_scope_eq_all
}

base_revoke_grant if {
	admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty
}

# (role:admin and system_scope:all)
admin_and_creds_system_scope_eq_all if {
	"admin" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s)
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.user.domain_id"]
	input.credentials.domain_id == input.target["target.project.domain_id"]
}

# (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s)
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.user.domain_id"]
	input.credentials.domain_id == input.target["target.domain.id"]
}

# (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s)
admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
	input.credentials.domain_id == input.target["target.project.domain_id"]
}

# (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)
admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
	input.credentials.domain_id == input.target["target.domain.id"]
}

# ((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

# ((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

# ((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

# ((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

# (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s)
creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
	# domain_id:%(target.role.domain_id)s
	input.credentials.domain_id == input.target["target.role.domain_id"]
}

# (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s)
creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
	# None:%(target.role.domain_id)s
	is_null(input.target["target.role.domain_id"])
}

# (((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)) and (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
	admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
	creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty
}

is_domain_level_user_grant if {
	input.credentials.token.domain.id == input.target["target.user.domain_id"]
	input.credentials.token.domain.id == input.target["target.domain.id"]
}

is_domain_manager if {
	"manager" in input.credentials.roles
}

base_list_users_in_group if {
	reader_and_creds_system_scope_eq_all
}

base_list_users_in_group if {
	reader_and_creds_domain_id_eq_input_target_group_domain_id
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:reader and domain_id:%(target.group.domain_id)s)
reader_and_creds_domain_id_eq_input_target_group_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
}

base_list_role_assignments if {
	reader_and_creds_system_scope_eq_all
}

base_list_role_assignments if {
	reader_and_creds_domain_id_eq_input_target_domain_id
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:reader and domain_id:%(target.domain_id)s)
reader_and_creds_domain_id_eq_input_target_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.domain_id"]
}

base_delete_project if {
	admin_and_creds_system_scope_eq_all
}

base_delete_project if {
	admin_and_creds_domain_id_eq_input_target_project_domain_id
}

# (role:admin and system_scope:all)
admin_and_creds_system_scope_eq_all if {
	"admin" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:admin and domain_id:%(target.project.domain_id)s)
admin_and_creds_domain_id_eq_input_target_project_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.project.domain_id"]
}

is_domain_level_group_grant if {
	input.credentials.token.domain.id == input.target["target.group.domain_id"]
	input.credentials.token.domain.id == input.target["target.domain.id"]
}

base_delete_group if {
	admin_and_creds_system_scope_eq_all
}

base_delete_group if {
	admin_and_creds_domain_id_eq_input_target_group_domain_id
}

# (role:admin and system_scope:all)
admin_and_creds_system_scope_eq_all if {
	"admin" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:admin and domain_id:%(target.group.domain_id)s)
admin_and_creds_domain_id_eq_input_target_group_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
}

base_list_user_projects if {
	reader_and_creds_system_scope_eq_all
}

base_list_user_projects if {
	reader_and_creds_domain_id_eq_input_target_user_domain_id
}

base_list_user_projects if {
	# user_id:%(target.user.id)s
	input.credentials.user_id == input.target["target.user.id"]
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:reader and domain_id:%(target.user.domain_id)s)
reader_and_creds_domain_id_eq_input_target_user_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.user.domain_id"]
}

is_domain_managed_role if {
	# 'member':%(target.role.name)s
	"member" == input.target["target.role.name"]
}

is_domain_managed_role if {
	# 'load-balancer_member':%(target.role.name)s
	"load-balancer_member" == input.target["target.role.name"]
}

is_domain_user_project_grant if {
	input.credentials.token.domain.id == input.target["target.user.domain_id"]
	input.credentials.token.domain.id == input.target["target.project.domain_id"]
}

base_get_role if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

identity_pf9_get_project_users if {
	# rule:admin_required
	admin_required
}

identity_pf9_get_project_users if {
	# project_id:%(project_id)s
	input.credentials.project_id == input.target.project_id
}

base_create_user if {
	admin_and_creds_system_scope_eq_all
}

base_create_user if {
	admin_and_creds_token_domain_id_eq_input_target_user_domain_id
}

# (role:admin and system_scope:all)
admin_and_creds_system_scope_eq_all if {
	"admin" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:admin and token.domain.id:%(target.user.domain_id)s)
admin_and_creds_token_domain_id_eq_input_target_user_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.token.domain.id == input.target["target.user.domain_id"]
}

base_list_groups_for_user if {
	reader_and_creds_system_scope_eq_all
}

base_list_groups_for_user if {
	reader_and_creds_domain_id_eq_input_target_user_domain_id
}

base_list_groups_for_user if {
	# user_id:%(user_id)s
	input.credentials.user_id == input.target.user_id
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:reader and domain_id:%(target.user.domain_id)s)
reader_and_creds_domain_id_eq_input_target_user_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.user.domain_id"]
}

base_list_groups if {
	reader_and_creds_system_scope_eq_all
}

base_list_groups if {
	reader_and_creds_domain_id_eq_input_target_group_domain_id
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:reader and domain_id:%(target.group.domain_id)s)
reader_and_creds_domain_id_eq_input_target_group_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
}

base_list_roles if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

base_list_domains if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

base_get_user if {
	reader_and_creds_system_scope_eq_all
}

base_get_user if {
	reader_and_creds_token_domain_id_eq_input_target_user_domain_id
}

base_get_user if {
	# user_id:%(target.user.id)s
	input.credentials.user_id == input.target["target.user.id"]
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:reader and token.domain.id:%(target.user.domain_id)s)
reader_and_creds_token_domain_id_eq_input_target_user_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.token.domain.id == input.target["target.user.domain_id"]
}

base_update_group if {
	admin_and_creds_system_scope_eq_all
}

base_update_group if {
	admin_and_creds_domain_id_eq_input_target_group_domain_id
}

# (role:admin and system_scope:all)
admin_and_creds_system_scope_eq_all if {
	"admin" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:admin and domain_id:%(target.group.domain_id)s)
admin_and_creds_domain_id_eq_input_target_group_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
}

identity_get_project_users if {
	# rule:admin_required
	admin_required
}

identity_get_project_users if {
	# project_id:%(project_id)s
	input.credentials.project_id == input.target.project_id
}

base_create_group if {
	admin_and_creds_system_scope_eq_all
}

base_create_group if {
	admin_and_creds_domain_id_eq_input_target_group_domain_id
}

# (role:admin and system_scope:all)
admin_and_creds_system_scope_eq_all if {
	"admin" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:admin and domain_id:%(target.group.domain_id)s)
admin_and_creds_domain_id_eq_input_target_group_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
}

base_get_group if {
	reader_and_creds_system_scope_eq_all
}

base_get_group if {
	reader_and_creds_domain_id_eq_input_target_group_domain_id
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:reader and domain_id:%(target.group.domain_id)s)
reader_and_creds_domain_id_eq_input_target_group_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
}

identity_ec2tokens_validate if {
	service_or_admin
}

base_update_project if {
	admin_and_creds_system_scope_eq_all
}

base_update_project if {
	admin_and_creds_domain_id_eq_input_target_project_domain_id
}

# (role:admin and system_scope:all)
admin_and_creds_system_scope_eq_all if {
	"admin" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:admin and domain_id:%(target.project.domain_id)s)
admin_and_creds_domain_id_eq_input_target_project_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.project.domain_id"]
}

base_update_user if {
	admin_and_creds_system_scope_eq_all
}

base_update_user if {
	admin_and_creds_token_domain_id_eq_input_target_user_domain_id
}

# (role:admin and system_scope:all)
admin_and_creds_system_scope_eq_all if {
	"admin" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:admin and token.domain.id:%(target.user.domain_id)s)
admin_and_creds_token_domain_id_eq_input_target_user_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.token.domain.id == input.target["target.user.domain_id"]
}

base_check_user_in_group if {
	reader_and_creds_system_scope_eq_all
}

base_check_user_in_group if {
	reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.user.domain_id)s)
reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
	input.credentials.domain_id == input.target["target.user.domain_id"]
}

base_get_domain if {
	reader_and_creds_system_scope_eq_all
}

base_get_domain if {
	# token.domain.id:%(target.domain.id)s
	input.credentials.token.domain.id == input.target["target.domain.id"]
}

base_get_domain if {
	# token.project.domain.id:%(target.domain.id)s
	input.credentials.token.project.domain.id == input.target["target.domain.id"]
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

identity_pf9_get_all_users if {
	admin_required
}

base_list_users if {
	reader_and_creds_system_scope_eq_all
}

base_list_users if {
	reader_and_creds_domain_id_eq_input_target_domain_id
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:reader and domain_id:%(target.domain_id)s)
reader_and_creds_domain_id_eq_input_target_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.domain_id"]
}

base_add_user_to_group if {
	admin_and_creds_system_scope_eq_all
}

base_add_user_to_group if {
	admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id
}

# (role:admin and system_scope:all)
admin_and_creds_system_scope_eq_all if {
	"admin" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.user.domain_id)s)
admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
	input.credentials.domain_id == input.target["target.user.domain_id"]
}

identity_s3tokens_validate if {
	service_or_admin
}

base_create_project if {
	admin_and_creds_system_scope_eq_all
}

base_create_project if {
	admin_and_creds_domain_id_eq_input_target_project_domain_id
}

# (role:admin and system_scope:all)
admin_and_creds_system_scope_eq_all if {
	"admin" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:admin and domain_id:%(target.project.domain_id)s)
admin_and_creds_domain_id_eq_input_target_project_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.project.domain_id"]
}

base_list_grants if {
	reader_and_creds_system_scope_eq_all
}

base_list_grants if {
	reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

base_list_grants if {
	reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

base_list_grants if {
	reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

base_list_grants if {
	reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s)
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.user.domain_id"]
	input.credentials.domain_id == input.target["target.project.domain_id"]
}

# (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s)
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.user.domain_id"]
	input.credentials.domain_id == input.target["target.domain.id"]
}

# (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s)
reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
	input.credentials.domain_id == input.target["target.project.domain_id"]
}

# (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)
reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
	input.credentials.domain_id == input.target["target.domain.id"]
}

is_domain_group_project_grant if {
	input.credentials.token.domain.id == input.target["target.group.domain_id"]
	input.credentials.token.domain.id == input.target["target.project.domain_id"]
}

base_create_grant if {
	admin_and_creds_system_scope_eq_all
}

base_create_grant if {
	admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty
}

# (role:admin and system_scope:all)
admin_and_creds_system_scope_eq_all if {
	"admin" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s)
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.user.domain_id"]
	input.credentials.domain_id == input.target["target.project.domain_id"]
}

# (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s)
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.user.domain_id"]
	input.credentials.domain_id == input.target["target.domain.id"]
}

# (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s)
admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
	input.credentials.domain_id == input.target["target.project.domain_id"]
}

# (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)
admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target["target.group.domain_id"]
	input.credentials.domain_id == input.target["target.domain.id"]
}

# ((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

# ((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

# ((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

# ((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
	admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

# (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s)
creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
	# domain_id:%(target.role.domain_id)s
	input.credentials.domain_id == input.target["target.role.domain_id"]
}

# (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s)
creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
	# None:%(target.role.domain_id)s
	is_null(input.target["target.role.domain_id"])
}

# (((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)) and (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
	admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
	creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty
}
