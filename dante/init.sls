{% from "dante/map.jinja" import dante %}

dante_pkg_installed:
  pkg.installed:
    - skip_suggestions: True
    - refresh: True
    - pkgs:
      - {{ dante["pkg"] }}

dante_config:
  file.managed:
    - name: {{ dante["config"] }}
    - source: salt://dante/files/server_config.jinja
    - template: jinja
    - user: root
    - defaults:
        config: {{ pillar["dante"]["server"] }}

dante_service:
  service.running:
    - name: {{ dante["service"] }}
    - enable: True
    - reload: False
    - watch:
      - file: {{ dante["config"] }}
