install_nfs-ser:
   pkg.installed:
      - name: nfs-utils

   service.running:
      - name: nfs
      - enable: True
      - require:
         - pkg: install_nfs-ser

/opt/temp:
   file.directory:
      - user: root
      - group: root
      - mode: 775
      - mkdirs: true
      - requires: root

/opt/temp/exports:
   file.managed:
      - source: salt://nfs-ser/exports
      - mode: 664
      - user: root
      - group: root
      - replace: True

   service.running:
      - name: nfs
      - reload: True
      - watch:
         - file: /opt/temp/exports

/opt/temp/fstab:
   file.append:
      - text: |
          192.168.86.137:/opt/temp/share /opt/temp/share nfs defaults,noatime,sync  0 0
