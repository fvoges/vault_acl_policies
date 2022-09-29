# Read system health check
path "sys/health" {
  capabilities = ["read", "sudo"]
}

# Manage Audit devices
path "sys/audit" {
  capabilities = ["read", "sudo"]
}

# Manage Audit devices
path "sys/audit/*" {
  capabilities = ["create", "delete", "sudo", "update"]
}

# Create and manage namespaces
path "sys/namespaces" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Create and manage namespaces
path "sys/namespaces/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Create and manage identities
path "identity/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# List existing ACL policies
path "sys/policies/acl" {
  capabilities = ["list"]
}

# Create and manage ACL policies
path "sys/policies/acl/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# List existing Sentinel EGP policies
path "sys/policies/egp" {
  capabilities = ["list"]
}

# Manage EGP Sentinel policies
path "sys/policies/egp/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# List existing Sentinel RGP policies
path "sys/policies/rgp" {
  capabilities = ["list"]
}

# Manage RGP Sentinel policies
path "sys/policies/rgp/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# Manage auth methods broadly across Vault
path "auth/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create, update, and delete auth methods
path "sys/auth/*" {
  capabilities = ["create", "update", "delete", "sudo"]
}

# List auth methods
path "sys/auth" {
  capabilities = ["read"]
}

# List existing secrets engines.
path "sys/mounts" {
  capabilities = ["read"]
}

# Manage secrets engines
path "sys/mounts/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# Manage Replication
path "sys/replication/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Manage Raft
path "sys/storage/raft/*" {
  capabilities = ["create", "delete", "list", "read", "update"]
}
