package nova_lib

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

context_is_admin if {
	"admin" in input.credentials.roles
	same_domain
}

admin_or_owner if {
	# is_admin:True
	input.credentials.is_admin
	same_domain
}

admin_or_owner if {
	# project_id:%(project_id)s
	input.credentials.project_id == input.target.project_id
	same_domain
}

admin_api if {
	input.credentials.is_admin
	same_domain
}

project_member_api if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

project_reader_api if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

project_member_or_admin if {
	# rule:project_member_api
	project_member_api
}

project_member_or_admin if {
	# rule:context_is_admin
	context_is_admin
}

project_reader_or_admin if {
	# rule:project_reader_api
	project_reader_api
}

project_reader_or_admin if {
	# rule:context_is_admin
	context_is_admin
}
