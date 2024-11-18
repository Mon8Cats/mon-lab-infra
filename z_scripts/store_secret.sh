gcloud secrets create my-secret-name \
  --replication-policy="automatic" \
  --project="your-project-id"

echo -n "your-secret-value" | gcloud secrets versions add my-secret-name \
  --data-file=- \
  --project="your-project-id"

echo -n "new-secret-value" | gcloud secrets versions add my-secret-name \
  --data-file=- \
  --project="your-project-id"

gcloud secrets versions list my-secret-name --project="your-project-id"


gcloud secrets versions access latest --secret="my-secret-name" --project="your-project-id"

export MY_SECRET=$(gcloud secrets versions access latest --secret="my-secret-name" --project="your-project-id")


roles/secretmanager.admin for creating secrets.
roles/secretmanager.secretAccessor for accessing secrets.