package identity.list_domains

import data.keystone_lib

# List domains.
# GET  /v3/domains
# Intended scope(s): system, domain, project
# Target attrs: target.domain.description, target.domain.domain_id, target.domain.enabled, target.domain.extra, target.domain.id, target.domain.is_domain, target.domain.name, target.domain.parent_id
# "identity:list_domains": "rule:admin_required or (role:reader and system_scope:all) or (role:reader and domain_id:%(target.domain.id)s)"

allow if {
	# rule:is_domain_manager
	keystone_lib.is_domain_manager
}

allow if {
	# rule:base_list_domains
	keystone_lib.base_list_domains
}

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}
