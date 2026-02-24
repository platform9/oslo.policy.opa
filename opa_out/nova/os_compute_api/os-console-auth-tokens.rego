package os_compute_api.os_console_auth_tokens

import data.lib

# Show console connection information for a given console
# authentication token
# GET  /os-console-auth-tokens/{console_token}
# Intended scope(s): project
#"os_compute_api:os-console-auth-tokens": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

