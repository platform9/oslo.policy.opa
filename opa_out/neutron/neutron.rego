package lib

context_is_admin if {
 "admin" in input.credentials.roles
}


context_with_global_access if {
 false
}


service_api if {
 "service" in input.credentials.roles
}


owner if {
 input.target.tenant_id == input.credentials.tenant_id
}


get_security_group(id) := net if {net := http.send({  "url": concat("/", ["http://localhost:9098/security_group", id]),  "method": "get",  "timeout": "1s",  "cache": true}).body}


admin_or_owner if {
 #rule:context_is_admin
context_is_admin
}


admin_or_owner if {
 #rule:owner
owner
}


context_is_advsvc if {
 "advsvc" in input.credentials.roles
}


admin_or_network_owner if {
 #rule:context_is_admin
context_is_admin
}


admin_or_network_owner if {
 #tenant_id:%(network:tenant_id)s
get_network(input.target.network_id).tenant_id == input.credentials.tenant_id
}


get_network(id) := net if {net := http.send({  "url": concat("/", ["http://localhost:9098/network", id]),  "method": "get",  "timeout": "1s",  "cache": true}).body}


admin_owner_or_network_owner if {
 #rule:owner
owner
}


admin_owner_or_network_owner if {
 #rule:admin_or_network_owner
admin_or_network_owner
}


network_owner if {
 get_network(input.target.network_id).tenant_id == input.credentials.tenant_id
}


get_network(id) := net if {net := http.send({  "url": concat("/", ["http://localhost:9098/network", id]),  "method": "get",  "timeout": "1s",  "cache": true}).body}


admin_only if {
 context_is_admin
}


regular_user if {
 
}


shared if {
 net := get_network(input.target.network_id)
net["shared"] == true
}


get_network(id) := net if {net := http.send({  "url": concat("/", ["http://localhost:9098/network", id]),  "method": "get",  "timeout": "1s",  "cache": true}).body}


dflt if {
 admin_or_owner
}


admin_or_ext_parent_owner if {
 #rule:context_is_admin
context_is_admin
}


admin_or_ext_parent_owner if {
 #tenant_id:%(ext_parent:tenant_id)s
# not yet implemented owner check tenant_id:%(ext_parent:tenant_id)s ext_parent:tenant_id
}


ext_parent_owner if {
 # not yet implemented owner check tenant_id:%(ext_parent:tenant_id)s ext_parent:tenant_id
}


sg_owner if {
 get_security_group(input.target.security_group_id).tenant_id == input.credentials.tenant_id
}


get_security_group(id) := net if {net := http.send({  "url": concat("/", ["http://localhost:9098/security_group", id]),  "method": "get",  "timeout": "1s",  "cache": true}).body}


shared_address_groups if {
 input.target.shared
}


shared_address_scopes if {
 input.target.shared
}


get_flavor_service_profile if {
 #rule:admin_only
admin_only
}


get_flavor_service_profile if {
 reader_and_creds_project_id_eq_input_project_id
}


#(role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
  "reader" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}


get_floatingip(id) := net if {net := http.send({  "url": concat("/", ["http://localhost:9098/floatingip", id]),  "method": "get",  "timeout": "1s",  "cache": true}).body}

external if {
 input.target["router:external"]
}


network_device if {
 regex.match("~^network:", input.target.device_owner)
}


admin_or_data_plane_int if {
 #rule:context_is_admin
context_is_admin
}


admin_or_data_plane_int if {
 #role:data_plane_integrator
"data_plane_integrator" in input.credentials.roles
}


shared_qos_policy if {
 input.target.shared
}


get_policy(id) := net if {net := http.send({  "url": concat("/", ["http://localhost:9098/policy", id]),  "method": "get",  "timeout": "1s",  "cache": true}).body}

restrict_wildcard if {
 not_field_rbac_policy_target_tenant_any_and_not_field_rbac_policy_target_project_any
}


restrict_wildcard if {
 #rule:admin_only
admin_only
}


#(not field:rbac_policy:target_tenant:* and not field:rbac_policy:target_project:*)
not_field_rbac_policy_target_tenant_any_and_not_field_rbac_policy_target_project_any if {
  not input.target.target_tenant == "*"
  not input.target.target_project == "*"
}


admin_or_sg_owner if {
 #rule:context_is_admin
context_is_admin
}


admin_or_sg_owner if {
 #tenant_id:%(security_group:tenant_id)s
get_security_group(input.target.security_group_id).tenant_id == input.credentials.tenant_id
}


get_security_group(id) := net if {net := http.send({  "url": concat("/", ["http://localhost:9098/security_group", id]),  "method": "get",  "timeout": "1s",  "cache": true}).body}


admin_owner_or_sg_owner if {
 #rule:owner
owner
}


admin_owner_or_sg_owner if {
 #rule:admin_or_sg_owner
admin_or_sg_owner
}


shared_security_group if {
 input.target.shared
}


rule_dflt_sg if {
 input.target.belongs_to_default_sg
}


external_network if {
 input.target["router:external"]
}


shared_subnetpools if {
 input.target.shared
}


