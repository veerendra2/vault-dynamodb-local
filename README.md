# Vault DynamoDB Local Setup

## Vault Init
```
# initlize vault
$ export VAULT_ADDR='http://127.0.0.1:8200'
$ vault operator init
Unseal Key 1: [REDACTED]
Unseal Key 2: [REDACTED]
Unseal Key 3: [REDACTED]
Unseal Key 4: [REDACTED]
Unseal Key 5: [REDACTED]

Initial Root Token: [REDACTED]

Vault initialized with 5 key shares and a key threshold of 3. Please securely
distribute the key shares printed above. When the Vault is re-sealed,
restarted, or stopped, you must supply at least 3 of these keys to unseal it
before it can start servicing requests.

Vault does not store the generated root key. Without at least 3 keys to
reconstruct the root key, Vault will remain permanently sealed!

It is possible to generate new unseal keys, provided you have a quorum of
existing unseal keys shares. See "vault operator rekey" for more information.

# unseal
$ vault operator unseal

```

## Vault Backend Migration
```
$ vault operator migrate -config migrate.hcl -log-level=debug
```
