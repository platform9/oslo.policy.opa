package identity.list_grants

import data.lib

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
#"identity:list_grants": "(rule:admin_required) or ((role:reader and system_scope:all) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
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

#((role:reader and system_scope:all) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  reader_and_creds_system_scope_eq_all
}

#((role:reader and system_scope:all) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

#((role:reader and system_scope:all) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

#((role:reader and system_scope:all) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id
}

#((role:reader and system_scope:all) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.user.domain_id)s and domain_id:%(target.domain.id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.project.domain_id)s) or (role:reader and domain_id:%(target.group.domain_id)s and domain_id:%(target.domain.id)s))
reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_and_creds_domain_id_eq_input_target_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_project_domain_id_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id if {
  reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_domain_id
}

