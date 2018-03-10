base:
#'salt-minion':
   '*':
#     'G@os:CentOS and G@kernel:Linux':
#       - match: compound
#       - git
    'os:CentOS':
       - match: grain
       - git
       - httpd
       - nfs-ser
       - users
