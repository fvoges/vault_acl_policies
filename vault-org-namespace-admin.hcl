
# Allow tokens to look up their own properties
path "acme/auth/token/lookup-self" {
    capabilities = ["read"]
}

# Allow a token to look up its own capabilities on a path
path "acme/sys/capabilities-self" {
    capabilities = ["update"]
}
# Create and manage namespaces
path "acme/sys/namespaces" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Create and manage namespaces
path "acme/sys/namespaces/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Create and manage identities
path "acme/identity/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# List existing ACL policies
path "acme/sys/policies/acl" {
  capabilities = ["list"]
}

# Create and manage ACL policies
path "acme/sys/policies/acl/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# List existing Sentinel EGP policies
path "acme/sys/policies/egp" {
  capabilities = ["list"]
}

# Manage EGP Sentinel policies
path "acme/sys/policies/egp/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# List existing Sentinel RGP policies
path "acme/sys/policies/rgp" {
  capabilities = ["list"]
}

# Manage RGP Sentinel policies
path "acme/sys/policies/rgp/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# Manage auth methods broadly across Vault
path "acme/auth/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create, update, and delete auth methods
path "acme/sys/auth/*" {
  capabilities = ["create", "update", "delete", "sudo"]
}

# List auth methods
path "acme/sys/auth" {
  capabilities = ["read"]
}

# List existing secrets engines.
path "acme/sys/mounts" {
  capabilities = ["read"]
}

path "acme/auth/kubernetes/*" {
  capabilities = ["create", "delete", "list", "read", "update"]
}

path "acme/auth/ldap/*" {
  capabilities = ["create", "delete", "list", "read", "update"]
}

path "acme/auth/jwt/*" {
  capabilities = ["create", "delete", "list", "read", "update"]
}
