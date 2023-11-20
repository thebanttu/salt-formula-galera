galera:
  version:
    mysql: 5.6
    galera: 3
  engine: mysql or mariadb
  master:
    enabled: true
    maintenance_password: ''
    name: biko
    bind:
      address: {{ ip }}
      port: 3306
    members:
    - host: 10.3.14.41
      port: 4567
    - host: 10.3.14.43
      port: 4567
    admin:
      user: root
      password: vitumingi
    database:
      name:
        encoding: 'utf8'
        users:
        - name: 'bantu'
          password: 'k1k0h0z1'
          host: 'localhost'
          rights: 'all privileges'
          database: '*.*'
