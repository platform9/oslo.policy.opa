package identity.list_grants

import data.keystone_lib

# List roles granted to an actor on a target. A target can be either a
# domain or a project. An actor can be either a user or a group. For
# the OS-INHERIT APIs, it is possible to list inherited role grants
# for actors on domains, where grants are inherited to all projects in
# the specified domain.
# GET  /v3/projects/{project_id}/users/{user_id}/roles
# HEAD  /v3/projects/{project_id}/users/{user_id}/roles
# GET  /v3/projects/{project_id}/groups/{group_id}/roles
# HEAD  /v3/projects/{project_id}/groups/{group_id}/roles
# GET  /v3/domains/{domain_id}/users/{user_id}/roles
# HEAD  /v3/domains/{domain_id}/users/{user_id}/roles
# GET  /v3/domains/{domain_id}/groups/{group_id}/roles
# HEAD  /v3/domains/{domain_id}/groups/{group_id}/roles
# GET  /v3/OS-INHERIT/domains/{domain_id}/groups/{group_id}/roles/inherited_to_projects
# GET  /v3/OS-INHERIT/domains/{domain_id}/users/{user_id}/roles/inherited_to_projects
# Intended scope(s): system, domain, project
# Target attrs: target.domain.description, target.domain.domain_id, target.domain.enabled, target.domain.extra, target.domain.id, target.domain.is_domain, target.domain.name, target.domain.parent_id, target.project.description, target.project.domain_id, target.project.enabled, target.project.extra, target.project.id, target.project.is_domain, target.project.name, target.project.parent_id, target.role.description, target.role.domain_id, target.role.extra, target.role.id, target.role.name, target.user.created_at, target.user.default_project_id, target.user.domain_id, target.user.enabled, target.user.extra, target.user.id, target.user.last_active_at
# "identity:list_grants": "(rule:admin_required) or ((role:reader and system_scope:all) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))"

allow if {
	# rule:domain_manager_grant
	keystone_lib.domain_manager_grant
}

allow if {
	# rule:base_list_grants
	keystone_lib.base_list_grants
}

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}
