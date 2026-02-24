package os_compute_api.os_quota_class_sets.update

import data.lib

# Update quotas for specific quota class
# PUT  /os-quota-class-sets/{quota_class}
# Intended scope(s): project
#"os_compute_api:os-quota-class-sets:update": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

