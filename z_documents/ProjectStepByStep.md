# Build CICD Pipelines for GCP CLOUD RUN application using CLOUD SQL

- create two github repositories (infra, app)
- create a GCP projects
- set a budget alert for my GCP account
- add a bucket creating terraform config in the infra repository
- open the cloud shell
- clone the github repository (infra)
- set environment variables
- run the terraform config and create a bucket for terraform backend
- (terraform init, validate, plan, apply)
- (terraform --version # cloud shell has old version. stick to it?)
- check bucket






## A. Create a GCP Projects and GitHub Repositories

- Create a GCP Project.
- Create a GitHub repository for infrastructure.
- Create a GitHub repository for application.
- Store project_id, project_number, region in GitHub Secrets
- Add "Google Cloud Build" GitHub app to your repositories.  

## B. Create a GCP Storage Bucket for Terraform backend

- Enable necessary GCP APIs. (Manually enable APIs like "cloudresourcemanager.googleapis.com")
- Create a GCP Storage Bucket with a globally unique name.
- Copy the terraform configs into the Cloud Shell
- Setup environment variables in the Cloud Shell, run terraform config files.
- Check the bucket in the Cloud Storage
 
```bash
export TF_VAR_project_id="my-project-id"
export TF_VAR_region="us-central1"
export TF_VAR_bucket_name="my-storage-bucket"

```

## C. Configure an Infrastructure CICD Pipeline 

- Setup the terraform backend with the created bucket (cannot use a variable)
- Create a service account for infra CICD pipeline with proper roles.
- Create a Workload Identity for Github account
- 



## D. Configure an Application CICD Pipeline

- Enable APIs
- Serete cicd-infra-sa service account

## E. Develop an Application

## F. Conventions

- Don't store sensitive date in the code. Use GCP Secret Manger, GitHub secrets.
- Use Terraform config files only for provisioning resources not for application deployment.
- Terraform config : use snake_case (project_id, network_module).
- GCP resource names: use kebab-case (my-gcp-project, my-vpc-network).
