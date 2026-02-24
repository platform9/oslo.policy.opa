package create_rbac_policy.target_tenant

import data.lib

# Specify ``target_tenant`` when creating an RBAC policy
# POST  /rbac-policies
# Intended scope(s): project
#"create_rbac_policy:target_tenant": "rule:admin_only or (not field:rbac_policy:target_tenant=* and not field:rbac_policy:target_project=*)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  not_field_rbac_policy_target_tenant_any_and_not_field_rbac_policy_target_project_any
}

#(not field:rbac_policy:target_tenant:* and not field:rbac_policy:target_project:*)
not_field_rbac_policy_target_tenant_any_and_not_field_rbac_policy_target_project_any if {
  not input.target.target_tenant == "*"
  not input.target.target_project == "*"
}

