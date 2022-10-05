
# Allow tokens to look up their own properties
path "app1/auth/token/lookup-self" {
    capabilities = ["read"]
}

# Allow a token to look up its own capabilities on a path
path "app1/sys/capabilities-self" {
    capabilities = ["update"]
}
# Create and manage namespaces
path "app1/sys/namespaces" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Create and manage namespaces
path "app1/sys/namespaces/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Create and manage identities
path "app1/identity/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# List existing ACL policies
path "app1/sys/policies/acl" {
  capabilities = ["list"]
}

# Create and manage ACL policies
path "app1/sys/policies/acl/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# List existing Sentinel EGP policies
path "app1/sys/policies/egp" {
  capabilities = ["list"]
}

# Manage EGP Sentinel policies
path "app1/sys/policies/egp/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# List existing Sentinel RGP policies
path "app1/sys/policies/rgp" {
  capabilities = ["list"]
}

# Manage RGP Sentinel policies
path "app1/sys/policies/rgp/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# Manage auth methods broadly across Vault
path "app1/auth/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create, update, and delete auth methods
path "app1/sys/auth/*" {
  capabilities = ["create", "update", "delete", "sudo"]
}

# List auth methods
path "app1/sys/auth" {
  capabilities = ["read"]
}

# List existing secrets engines.
path "app1/sys/mounts" {
  capabilities = ["read"]
}

# Manage secrets engines
path "app1/sys/mounts/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# # Configure AWS secrets engine
# path "app1/aws/config/*" {
#   capabilities = ["create", "delete", "read", "update"]
# }

# # List AWS secrets engine roles
# path "app1/aws/roles" {
#   capabilities = ["list", "read"]
# }

# # Configure AWS secrets engine roles
# path "app1/aws/roles/*" {
#   capabilities = ["create", "delete", "list", "read", "update"]
# }

# Admins should not really need these
## Generate AWS credentials
#path "app1/creds/*" {
#  capabilities = ["read"]
#}
#
#path "app1/sts/*" {
#  capabilities = ["create","update"]
#}

# Configure Kubernetes secrets engine
path "app1/kubernetes/config/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# List Kubernetes secrets engine roles
path "app1/kubernetes/roles" {
  capabilities = ["list", "read"]
}

# Configure Kubernetes secrets engine roles
path "app1/kubernetes/roles/*" {
  capabilities = ["create", "delete", "list", "read", "update"]
}

path "app1/auth/kubernetes/*" {
  capabilities = ["create", "delete", "list", "read", "update"]
}

path "app1/auth/jwt/*" {
  capabilities = ["create", "delete", "list", "read", "update"]
}

path "app1/kv/*" {
  capabilities = ["create", "delete", "list", "patch", "read", "update"]
}
