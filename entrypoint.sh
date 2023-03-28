cat >/opt/alist/data/config.json <<EOF
{
  "force": false,
  "address": "0.0.0.0",
  "port": 5244,
  "site_url": "",
  "cdn": "",
  "jwt_secret": "random generated",
  "token_expires_in": 48,
  "database": {
    "type": "postgres",
    "host": "$PGHOST",
    "port": $PGPORT,
    "user": "$PGUSER",
    "password": "$PGPASSWORD",
    "name": "$PGDATABASE",
    "db_file": "data/data.db",
    "table_prefix": "x_",
    "ssl_mode": ""
  },
  "scheme": {
    "https": false,
    "cert_file": "",
    "key_file": ""
  },
  "temp_dir": "data/temp",
  "bleve_dir": "data/bleve",
  "log": {
    "enable": true,
    "name": "data/log/log.log",
    "max_size": 10,
    "max_backups": 5,
    "max_age": 28,
    "compress": false
  },
  "max_connections": 0,
  "tls_insecure_skip_verify": false
}
EOF
