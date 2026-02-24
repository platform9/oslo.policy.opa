package identity.create_grant

import data.lib

# Create a role grant between a target and an actor. A target can be
# either a domain or a project. An actor can be either a user or a
# group. These terms also apply to the OS-INHERIT APIs, where grants
# on the target are inherited to all projects in the subtree, if
# applicable.
# PUT  /v3/projects/{project_id}/users/{user_id}/roles/{role_id}
# PUT  /v3/projects/{project_id}/groups/{group_id}/roles/{role_id}
# PUT  /v3/domains/{domain_id}/users/{user_id}/roles/{role_id}
# PUT  /v3/domains/{domain_id}/groups/{group_id}/roles/{role_id}
# PUT  /v3/OS-INHERIT/projects/{project_id}/users/{user_id}/roles/{role_id}/inherited_to_projects
# PUT  /v3/OS-INHERIT/projects/{project_id}/groups/{group_id}/roles/{role_id}/inherited_to_projects
# PUT  /v3/OS-INHERIT/domains/{domain_id}/users/{user_id}/roles/{role_id}/inherited_to_projects
# PUT  /v3/OS-INHERIT/domains/{domain_id}/groups/{group_id}/roles/{role_id}/inherited_to_projects
# Intended scope(s): system, domain, project
#"identity:create_grant": "(rule:admin_required) or ((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)) and (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s) or ((role:manager and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:manager and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)) and rule:domain_managed_target_role"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty
}

allow if {
  manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_domain_managed_target_role
}

#domain_id:%(target.user.domain_id)s
creds_domain_id_eq_input_target_user_domain_id if {
  input.credentials.domain_id == input.target.target.user.domain_id
}

#domain_id:%(target.user.domain_id)s
creds_domain_id_eq_input_target_user_domain_id if {
  input.credentials.domain_id == input.target["target.user.domain_id"]
}

#domain_id:%(target.project.domain_id)s
creds_domain_id_eq_input_target_project_domain_id if {
  input.credentials.domain_id == input.target.target.project.domain_id
}

#domain_id:%(target.project.domain_id)s
creds_domain_id_eq_input_target_project_domain_id if {
  input.credentials.domain_id == input.target["target.project.domain_id"]
}

#(role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s)
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id if {
  "admin" in input.credentials.roles
  creds_domain_id_eq_input_target_user_domain_id
  creds_domain_id_eq_input_target_project_domain_id
}

#domain_id:%(target.domain.id)s
creds_domain_id_eq_input_target_domain_id if {
  input.credentials.domain_id == input.target.target.domain.id
}

#domain_id:%(target.domain.id)s
creds_domain_id_eq_input_target_domain_id if {
  input.credentials.domain_id == input.target["target.domain.id"]
}

#(role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s)
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  "admin" in input.credentials.roles
  creds_domain_id_eq_input_target_user_domain_id
  creds_domain_id_eq_input_target_domain_id
}

#domain_id:%(target.group.domain_id)s
creds_domain_id_eq_input_target_group_domain_id if {
  input.credentials.domain_id == input.target.target.group.domain_id
}

#domain_id:%(target.group.domain_id)s
creds_domain_id_eq_input_target_group_domain_id if {
  input.credentials.domain_id == input.target["target.group.domain_id"]
}

#(role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s)
admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id if {
  "admin" in input.credentials.roles
  creds_domain_id_eq_input_target_group_domain_id
  creds_domain_id_eq_input_target_project_domain_id
}

#(role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)
admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  "admin" in input.credentials.roles
  creds_domain_id_eq_input_target_group_domain_id
  creds_domain_id_eq_input_target_domain_id
}

#((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

#((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

#((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

#((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

#domain_id:%(target.role.domain_id)s
creds_domain_id_eq_input_target_role_domain_id if {
  input.credentials.domain_id == input.target.target.role.domain_id
}

#domain_id:%(target.role.domain_id)s
creds_domain_id_eq_input_target_role_domain_id if {
  input.credentials.domain_id == input.target["target.role.domain_id"]
}

#None:%(target.role.domain_id)s
input_target_role_domain_id_empty if {
  is_null(input.target.target.role.domain_id)
}

#None:%(target.role.domain_id)s
input_target_role_domain_id_empty if {
  is_null(input.target["target.role.domain_id"])
}

#(domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s)
creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
  creds_domain_id_eq_input_target_role_domain_id
}

#(domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s)
creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
  input_target_role_domain_id_empty
}

#(((role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:admin and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)) and (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s))
admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
  admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_admin_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
  creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty
}

#(role:manager and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s)
manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id if {
  "manager" in input.credentials.roles
  creds_domain_id_eq_input_target_user_domain_id
  creds_domain_id_eq_input_target_project_domain_id
}

#(role:manager and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s)
manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  "manager" in input.credentials.roles
  creds_domain_id_eq_input_target_user_domain_id
  creds_domain_id_eq_input_target_domain_id
}

#(role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s)
manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id if {
  "manager" in input.credentials.roles
  creds_domain_id_eq_input_target_group_domain_id
  creds_domain_id_eq_input_target_project_domain_id
}

#(role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)
manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  "manager" in input.credentials.roles
  creds_domain_id_eq_input_target_group_domain_id
  creds_domain_id_eq_input_target_domain_id
}

#((role:manager and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:manager and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

#((role:manager and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:manager and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

#((role:manager and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:manager and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

#((role:manager and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:manager and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

#(((role:manager and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:manager and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:manager and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)) and rule:domain_managed_target_role)
manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_domain_managed_target_role if {
  manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_manager_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_manager_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
  lib.domain_managed_target_role
}

