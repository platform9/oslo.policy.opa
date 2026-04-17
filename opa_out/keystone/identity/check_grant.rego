package identity.check_grant

import data.keystone_lib

# Check a role grant between a target and an actor. A target can be
# either a domain or a project. An actor can be either a user or a
# group. These terms also apply to the OS-INHERIT APIs, where grants
# on the target are inherited to all projects in the subtree, if
# applicable.
# HEAD  /v3/projects/{project_id}/users/{user_id}/roles/{role_id}
# GET  /v3/projects/{project_id}/users/{user_id}/roles/{role_id}
# HEAD  /v3/projects/{project_id}/groups/{group_id}/roles/{role_id}
# GET  /v3/projects/{project_id}/groups/{group_id}/roles/{role_id}
# HEAD  /v3/domains/{domain_id}/users/{user_id}/roles/{role_id}
# GET  /v3/domains/{domain_id}/users/{user_id}/roles/{role_id}
# HEAD  /v3/domains/{domain_id}/groups/{group_id}/roles/{role_id}
# GET  /v3/domains/{domain_id}/groups/{group_id}/roles/{role_id}
# HEAD  /v3/OS-INHERIT/projects/{project_id}/users/{user_id}/roles/{role_id}/inherited_to_projects
# GET  /v3/OS-INHERIT/projects/{project_id}/users/{user_id}/roles/{role_id}/inherited_to_projects
# HEAD  /v3/OS-INHERIT/projects/{project_id}/groups/{group_id}/roles/{role_id}/inherited_to_projects
# GET  /v3/OS-INHERIT/projects/{project_id}/groups/{group_id}/roles/{role_id}/inherited_to_projects
# HEAD  /v3/OS-INHERIT/domains/{domain_id}/users/{user_id}/roles/{role_id}/inherited_to_projects
# GET  /v3/OS-INHERIT/domains/{domain_id}/users/{user_id}/roles/{role_id}/inherited_to_projects
# HEAD  /v3/OS-INHERIT/domains/{domain_id}/groups/{group_id}/roles/{role_id}/inherited_to_projects
# GET  /v3/OS-INHERIT/domains/{domain_id}/groups/{group_id}/roles/{role_id}/inherited_to_projects
# Intended scope(s): system, domain, project
# Target attrs: target.domain.description, target.domain.domain_id, target.domain.enabled, target.domain.extra, target.domain.id, target.domain.is_domain, target.domain.name, target.domain.parent_id, target.project.description, target.project.domain_id, target.project.enabled, target.project.extra, target.project.id, target.project.is_domain, target.project.name, target.project.parent_id, target.role.description, target.role.domain_id, target.role.extra, target.role.id, target.role.name, target.user.created_at, target.user.default_project_id, target.user.domain_id, target.user.enabled, target.user.extra, target.user.id, target.user.last_active_at
# "identity:check_grant": "(rule:admin_required) or ((role:reader and system_scope:all) or ((role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)) and (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s))"

allow if {
	# rule:domain_manager_grant
	keystone_lib.domain_manager_grant
}

allow if {
	# rule:base_check_grant
	keystone_lib.base_check_grant
}

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}
