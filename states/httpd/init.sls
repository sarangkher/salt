install_httpd:
   pkg.installed:
#    {% if grains['a'] == '1' %}
      - name: httpd
#    {% endif %}

   service.running:
      - name: httpd
      - enable: True
      - require:
         - pkg: install_httpd
