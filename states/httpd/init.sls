install_httpd:
   pkg.installed:
{% if grains['os'] == 'CentOS' %}
      - name: httpd
{% endif %}

   service.running:
      - name: httpd
      - enable: True
      - require:
         - pkg: install_httpd
