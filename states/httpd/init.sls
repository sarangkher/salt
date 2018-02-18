install_httpd:
   pkg.installed:
      - name: httpd

   service.running:
      - name: httpd
      - enable: True
      - require:
         - pkg: install_httpd
