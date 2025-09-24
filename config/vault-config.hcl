storage "dynamodb" {
  ha_enabled = "false"
  table      = "vault-test"
}

storage "postgresql" {
  connection_url = "host=vault-backend-storage.postgres.database.azure.com port=5432 dbname=vault2 user=vuser2 password=[REDACTED] sslmode=require"
}

listener "tcp" {
  tls_disable     = 1
  address         = "0.0.0.0:8200"
}
ui = true
