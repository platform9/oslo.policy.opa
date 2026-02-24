package os_compute_api.limits.other_project

import data.lib

# Show rate and absolute limits of other project.
#
# This policy only checks if the user has access to the requested
# project limits. And this check is performed only after the check
# os_compute_api:limits passes
# GET  /limits
# Intended scope(s): project
#"os_compute_api:limits:other_project": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

