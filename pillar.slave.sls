galera:
  slave:
    enabled: true
    name: biko
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
