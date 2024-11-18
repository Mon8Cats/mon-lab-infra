# GCP Summary


## Create a project

- Go to IAM Settings and get project id, projet number
- mon-cloud-lab, 583630435909
- What are created automatically?
  1. Default VPC Network
     1. Subnets
     2. Firewall Rules: default-allow-internal, default-allow-ssh, default-allow-rdp, default-allow-icmp
  2. Default Network Tags
     1. http-server, https-server
  3. Default Service Accounts
     1. Default Compute Engine service account: Project_Number-compute@developer.gserviceaccount.com (edit role)
     2. A Google APIs service agent account: service-PROJECT_NUMBER@service-networking.iam.gserviceaccount.com (to internal operations)
  4. Default IAM Policy and Roles
     1. Project creator = Owner role
     2. Basic roles (Owner, Editor, Viewer) are available 
  5. Default APIs Enabled
     1. Cloud Resource Manager API, IAM API, Service Usage API, Billing API
  6. Default Billing Account
  7. Default Cloud Storage Bucket for Logs (Optional)
  8. Default Organization Policies
  9. Default Quiotas and Limits


## APIs

## Cloud Storage Buckets

##