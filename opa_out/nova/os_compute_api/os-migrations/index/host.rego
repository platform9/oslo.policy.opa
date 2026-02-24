package os_compute_api.os_migrations.index.host

import data.lib

# List migrations with host info
# GET  /os-migrations
# Intended scope(s): project
#"os_compute_api:os-migrations:index:host": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

