{% from "dante/map.jinja" import dante with context %}

dante_server:
  pkg:
    - installed
    - name: {{ dante.server.pkg }}
  service:
    - name: {{ dante.server.service }}
    - running
    - enable: True
    - sig: danted

