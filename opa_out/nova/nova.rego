package lib

context_is_admin if {
 "admin" in input.credentials.roles
}


admin_or_owner if {
 #is_admin:True
input.credentials.is_admin
}


admin_or_owner if {
 #project_id:%(project_id)s
input.credentials.project_id == input.target.project_id
}


admin_api if {
 input.credentials.is_admin
}


project_manager_api if {
 "manager" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}


project_member_api if {
 "member" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}


project_reader_api if {
 "reader" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}


service_api if {
 "service" in input.credentials.roles
}


project_manager_or_admin if {
 #rule:project_manager_api
project_manager_api
}


project_manager_or_admin if {
 #rule:context_is_admin
context_is_admin
}


project_member_or_admin if {
 #rule:project_member_api
project_member_api
}


project_member_or_admin if {
 #rule:context_is_admin
context_is_admin
}


project_reader_or_admin if {
 #rule:project_reader_api
project_reader_api
}


project_reader_or_admin if {
 #rule:context_is_admin
context_is_admin
}


service_or_admin if {
 #rule:service_api
service_api
}


service_or_admin if {
 #rule:context_is_admin
context_is_admin
}


