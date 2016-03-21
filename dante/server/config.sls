{% from "dante/map.jinja" import dante with context %}

include:
  - dante.server

dante_config:
  file:
    - managed
    - name: {{ dante.server.config }}
    - source: salt://dante/server/files/server.jinja
    - template: jinja
    - config: {{ salt['pillar.get']('dante:server') }}
    - user: root
    - watch_in:
      - service: dante_server

