{% for user, data in pillar.get('users', {}).items() %}
{{ user }}:
  user.present:
    - fullname: {{ data['fullname'] }}
    - uid: {{ data['uid'] }}
    - home: {{ data['home'] }}
    - shell: {{ data['shell'] }}
    - groups: {{ data['groups'] }}
{% endfor %}
