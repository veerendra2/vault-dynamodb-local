storage "dynamodb" {
  ha_enabled = "false"
  table      = "vault-test"
}

listener "tcp" {
  tls_disable     = 1
  address         = "0.0.0.0:8200"
}
ui = true
