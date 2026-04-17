package identity.list_projects

# List projects.
# GET  /v3/projects
# Intended scope(s): system, domain, project
# Target attrs: target.project.description, target.project.domain_id, target.project.enabled, target.project.extra, target.project.id, target.project.is_domain, target.project.name, target.project.parent_id
# "identity:list_projects": "(rule:admin_required) or (role:reader and system_scope:all) or (role:reader and domain_id:%(target.domain_id)s)"

allow if {}
