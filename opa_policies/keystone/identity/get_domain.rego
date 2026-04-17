package identity.get_domain

import data.keystone_lib

# Show domain details.
# GET  /v3/domains/{domain_id}
# Intended scope(s): system, domain, project
# Target attrs: target.domain.description, target.domain.domain_id, target.domain.enabled, target.domain.extra, target.domain.id, target.domain.is_domain, target.domain.name, target.domain.parent_id
# "identity:get_domain": "rule:admin_required or (role:reader and system_scope:all) or token.domain.id:%(target.domain.id)s or token.project.domain.id:%(target.domain.id)s"

allow if {
	# rule:base_get_domain
	keystone_lib.base_get_domain
}

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}
