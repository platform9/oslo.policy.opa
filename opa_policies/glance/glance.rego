package glance_lib

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

dflt if {}

context_is_admin if {
	"admin" in input.credentials.roles
	same_domain
}

manage_image_cache if {
	context_is_admin
}

metadef_dflt if {}

metadef_admin if {
	context_is_admin
}
