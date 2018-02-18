base:
#'salt-minion':
#   '*':
#    'kernel:Linux':
#       - match: grain
#       - git
    'os:CentOS':
       - match: grain
       - git
       - httpd
       - nfs-ser
