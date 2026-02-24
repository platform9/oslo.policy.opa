package compute.servers.resize.cross_cell

# Resize a server across cells. By default, this is disabled for all
# users and recommended to be tested in a deployment for admin users
# before opening it up to non-admin users. Resizing within a cell is
# the default preferred behavior even if this is enabled.
# POST  /servers/{server_id}/action (resize)
# Intended scope(s): project
#"compute:servers:resize:cross_cell": "!"


allow if {
  false
}

