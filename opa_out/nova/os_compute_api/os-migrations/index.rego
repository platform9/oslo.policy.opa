package os_compute_api.os_migrations.index

import data.lib

# List migrations without host info
# GET  /os-migrations
# Intended scope(s): project
#"os_compute_api:os-migrations:index": "rule:project_manager_or_admin"


allow if {
  lib.project_manager_or_admin
}

