package identity.delete_domain

import data.keystone_lib

# Delete domain.
# DELETE  /v3/domains/{domain_id}
# Intended scope(s): system, project
# Target attrs: target.domain.description, target.domain.domain_id, target.domain.enabled, target.domain.extra, target.domain.id, target.domain.is_domain, target.domain.name, target.domain.parent_id
# "identity:delete_domain": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
