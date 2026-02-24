package create_rbac_policy.target_project

import data.lib

# Specify ``target_project`` when creating an RBAC policy
# POST  /rbac-policies
# Intended scope(s): project
#"create_rbac_policy:target_project": "rule:admin_only or not field:rbac_policy:target_project=*"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  #not field:rbac_policy:target_project:*
not input.target.target_project == "*"
}

