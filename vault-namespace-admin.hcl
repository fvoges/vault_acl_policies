
# Allow tokens to look up their own properties
path "acme/app1/auth/token/lookup-self" {
    capabilities = ["read"]
}

# Allow a token to look up its own capabilities on a path
path "acme/app1/sys/capabilities-self" {
    capabilities = ["update"]
}
# Create and manage namespaces
path "acme/app1/sys/namespaces" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Create and manage namespaces
path "acme/app1/sys/namespaces/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Create and manage identities
path "acme/app1/identity/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# List existing ACL policies
path "acme/app1/sys/policies/acl" {
  capabilities = ["list"]
}

# Create and manage ACL policies
path "acme/app1/sys/policies/acl/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# List existing Sentinel EGP policies
path "acme/app1/sys/policies/egp" {
  capabilities = ["list"]
}

# Manage EGP Sentinel policies
path "acme/app1/sys/policies/egp/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# List existing Sentinel RGP policies
path "acme/app1/sys/policies/rgp" {
  capabilities = ["list"]
}

# Manage RGP Sentinel policies
path "acme/app1/sys/policies/rgp/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# Manage auth methods broadly across Vault
path "acme/app1/auth/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create, update, and delete auth methods
path "acme/app1/sys/auth/*" {
  capabilities = ["create", "update", "delete", "sudo"]
}

# List auth methods
path "acme/app1/sys/auth" {
  capabilities = ["read"]
}

# List existing secrets engines.
path "acme/app1/sys/mounts" {
  capabilities = ["read"]
}

# Manage secrets engines
path "acme/app1/sys/mounts/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# # Configure AWS secrets engine
# path "acme/app1/aws/config/*" {
#   capabilities = ["create", "delete", "read", "update"]
# }

# # List AWS secrets engine roles
# path "acme/app1/aws/roles" {
#   capabilities = ["list", "read"]
# }

# # Configure AWS secrets engine roles
# path "acme/app1/aws/roles/*" {
#   capabilities = ["create", "delete", "list", "read", "update"]
# }

# Admins should not really need these
## Generate AWS credentials
#path "acme/app1/creds/*" {
#  capabilities = ["read"]
#}
#
#path "acme/app1/sts/*" {
#  capabilities = ["create","update"]
#}

# Configure Kubernetes secrets engine
path "acme/app1/kubernetes/config" {
  capabilities = ["create", "delete", "read", "update"]
}

# List Kubernetes secrets engine roles
path "acme/app1/kubernetes/roles" {
  capabilities = ["list", "read"]
}

# Configure Kubernetes secrets engine roles
path "acme/app1/kubernetes/roles/*" {
  capabilities = ["create", "delete", "list", "read", "update"]
}

# Generate Kubernetes secrets engine credentials
# path "acme/app1/kubernetes/creds/*" {
#   capabilities = ["create", "update"]
# }

path "acme/app1/auth/kubernetes/*" {
  capabilities = ["create", "delete", "list", "read", "update"]
}

path "acme/app1/auth/jwt/*" {
  capabilities = ["create", "delete", "list", "read", "update"]
}

path "acme/app1/kv/*" {
  capabilities = ["create", "delete", "list", "patch", "read", "update"]
}

# List database secrets engine connections
path "acme/app1/database/config" {
  capabilities = ["list"]
}

# Configure database secrets engine connection
path "acme/app1/database/config/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# List database secrets engine roles
path "acme/app1/database/roles" {
  capabilities = ["list"]
}

# Configure database secrets engine roles
path "acme/app1/database/roles/*" {
  capabilities = ["create", "delete", "read", "update"]
}

# List static database roles
path "acme/app1/database/static-roles" {
 capabilities = ["list"]
}

# Create/update static database roles
path "acme/app1/database/static-roles/*" {
 capabilities = ["create", "delete", "read", "update"]
}

# # Retrieve static database credentials
# path "acme/app1/database/static-creds/*" {
#  capabilities = ["read"]
# }

# For testing only
path "acme/app1/database/*" {
  capabilities = ["create", "delete", "list", "read", "update"]
}

# # Retrieve static database credentials
# path "acme/app1/database/static-creds/*" {
#  capabilities = ["read"]
# }

# # Admins should not really need these
# # Generate database credentials
# path "acme/app1/database/creds/*" {
#  capabilities = ["read"]
# }
