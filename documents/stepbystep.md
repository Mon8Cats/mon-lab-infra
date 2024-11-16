# Build CICD Pipelines for GCP CLOUD RUN application using CLOUD SQL

## A. Create a GCP Projects and GitHub Repositories

- Create a GCP Project.
- Create a GitHub repository for infrastructure.
- Create a GitHub repository for application.
- Store project_id, project_number, region in GitHub Secrets
- Add "Google Cloud Build" GitHub app to your repositories.  

## B. Create a GCP Storage Bucket for Terraform backend

- Create a GCP Storage Bucket with a globally unique name
- Setup environ variables in Cloud Shell, run terraform config files
 
```bash
export TF_VAR_project_id="my-project-id"
export TF_VAR_region="us-central1"
export TF_VAR_bucket_name="my-storage-bucket"

```

## C. Configure an Infrastructure CICD Pipeline 

## D. Configure an Application CICD Pipeline

## E. Develop an Application

