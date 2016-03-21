{% from "dante/map.jinja" import dante with context %}

include:
  - dante.server

{%if salt['grains.get']('os') == 'Ubuntu' %}
extend:
  dante_server:
    pkgrepo:
      - managed
      - ppa: dajhorn/dante
      - humanname: Dante PPA
      - keyid: 1EE8660B
      - require_in:
        - pkg: {{ dante.server.pkg }}

    pkg:
      - latest
      - name: {{ dante.server.pkg }}
      - refresh: True

{% endif %}
