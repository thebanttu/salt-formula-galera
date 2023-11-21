{%- set ip = salt['grains.get']('ipv4')[0] -%}
galera:
  slave:
    enabled: true
    name: biko
    maintenance_password: ''
    bind:
      address: {{ ip }}
      port: 3306
    members:
    - host: 10.3.14.36
      port: 4567
    - host: 10.3.14.43
      port: 4567
    admin:
      user: root
      password: pass
