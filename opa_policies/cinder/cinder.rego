package cinder_lib

# Domain membership: caller and target resource belong to the same domain.
# target.domain_id is populated by the service enforcement layer.
same_domain if {
	input.credentials.system_scope == "all"
}

same_domain if {
	input.credentials.project_domain_id == input.target.domain_id
}

same_domain if {
	input.credentials.domain_id == input.target.domain_id
}

admin_or_owner if {
	# is_admin:True
	input.credentials.is_admin
	same_domain
}

admin_or_owner if {
	admin_and_creds_is_admin_project_eq_True
}

admin_or_owner if {
	# project_id:%(project_id)s
	input.credentials.project_id == input.target.project_id
	same_domain
}

# (role:admin and is_admin_project:True)
admin_and_creds_is_admin_project_eq_True if {
	"admin" in input.credentials.roles
	input.credentials.is_admin_project
	same_domain
}

system_or_domain_or_project_admin if {
	admin_and_creds_system_scope_eq_all
}

system_or_domain_or_project_admin if {
	admin_and_creds_domain_id_eq_input_domain_id
}

system_or_domain_or_project_admin if {
	admin_and_creds_project_id_eq_input_project_id
}

# (role:admin and system_scope:all)
admin_and_creds_system_scope_eq_all if {
	"admin" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:admin and domain_id:%(domain_id)s)
admin_and_creds_domain_id_eq_input_domain_id if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == input.target.domain_id
}

# (role:admin and project_id:%(project_id)s)
admin_and_creds_project_id_eq_input_project_id if {
	"admin" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

context_is_admin if {
	"admin" in input.credentials.roles
	same_domain
}

admin_api if {
	# is_admin:True
	input.credentials.is_admin
	same_domain
}

admin_api if {
	admin_and_creds_is_admin_project_eq_True
}

# (role:admin and is_admin_project:True)
admin_and_creds_is_admin_project_eq_True if {
	"admin" in input.credentials.roles
	input.credentials.is_admin_project
	same_domain
}

xena_system_admin_or_project_reader if {
	# role:admin
	"admin" in input.credentials.roles
	same_domain
}

xena_system_admin_or_project_reader if {
	reader_and_creds_project_id_eq_input_project_id
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

xena_system_admin_or_project_member if {
	# role:admin
	"admin" in input.credentials.roles
	same_domain
}

xena_system_admin_or_project_member if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

volume_extension_volume_type_encryption if {
	admin_api
}
