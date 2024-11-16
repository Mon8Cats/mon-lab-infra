# Build CICD Pipelines for GCP CLOUD RUN application using CLOUD SQL

## A. Create a GCP Projects and GitHub Repositories

- Create a GCP Project.
- Create a GitHub repository for infrastructure.
- Create a GitHub repository for application.
- Store project_id, project_number, region in GitHub Secrets
- Add "Google Cloud Build" GitHub app to your repositories.  

## B. Create a GCP Storage Bucket for Terraform backend

- Enable necessary GCP APIs.
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




## D. Configure an Application CICD Pipeline

## E. Develop an Application

## F. Conventions

- Don't store sensitive date in the code. Use GCP Secret Manger, GitHub secrets.
- Use Terraform config files only for provisioning resources not for application deployment.
- Terraform config : use snake_case (project_id, network_module).
- GCP resource names: use kebab-case (my-gcp-project, my-vpc-network).
