package identity.check_grant

import data.lib

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
#"identity:check_grant": "(rule:admin_required) or ((role:reader and system_scope:all) or ((role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)) and (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s))"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
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

#(role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s)
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id if {
  "reader" in input.credentials.roles
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

#(role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s)
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  "reader" in input.credentials.roles
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

#(role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s)
reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id if {
  "reader" in input.credentials.roles
  creds_domain_id_eq_input_target_group_domain_id
  creds_domain_id_eq_input_target_project_domain_id
}

#(role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)
reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  "reader" in input.credentials.roles
  creds_domain_id_eq_input_target_group_domain_id
  creds_domain_id_eq_input_target_domain_id
}

#((role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

#((role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

#((role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

#((role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
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

#(((role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)) and (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s))
reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
  reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
  creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty
}

#((role:reader and system_scope:all) or (((role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)) and (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s)))
reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
  reader_and_creds_system_scope_eq_all
}

#((role:reader and system_scope:all) or (((role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s)) and (domain_id:%(target.role.domain_id)s or None:%(target.role.domain_id)s)))
reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty if {
  reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id_and_creds_domain_id_eq_input_target_role_domain_id_or_input_target_role_domain_id_empty
}

