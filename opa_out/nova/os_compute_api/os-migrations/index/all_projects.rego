package os_compute_api.os_migrations.index.all_projects

import data.lib

# List migrations for all or cross projects
# GET  /os-migrations
# Intended scope(s): project
#"os_compute_api:os-migrations:index:all_projects": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

