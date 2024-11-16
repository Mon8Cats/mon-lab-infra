# GCLOUD Summary

## Commends

- Delete the Default VPC network

```bash
gcloud compute networks delete default
```

- Check Enabled APIs
  
```bash
gcloud services list
gcloud services list --enabled
gcloud services list --enabled --filter="NAME:API_NAME"
gcloud services list --enabled --filter="NAME:compute.googleapis.com"

```

$ gcloud services list --enabled
NAME: analyticshub.googleapis.com
TITLE: Analytics Hub API

NAME: bigquery.googleapis.com
TITLE: BigQuery API

NAME: bigqueryconnection.googleapis.com
TITLE: BigQuery Connection API

NAME: bigquerydatapolicy.googleapis.com
TITLE: BigQuery Data Policy API

NAME: bigquerymigration.googleapis.com
TITLE: BigQuery Migration API

NAME: bigqueryreservation.googleapis.com
TITLE: BigQuery Reservation API

NAME: bigquerystorage.googleapis.com
TITLE: BigQuery Storage API

NAME: cloudapis.googleapis.com
TITLE: Google Cloud APIs

NAME: cloudtrace.googleapis.com
TITLE: Cloud Trace API

NAME: dataform.googleapis.com
TITLE: Dataform API

NAME: dataplex.googleapis.com
TITLE: Cloud Dataplex API

NAME: datastore.googleapis.com
TITLE: Cloud Datastore API

NAME: logging.googleapis.com
TITLE: Cloud Logging API

NAME: monitoring.googleapis.com
TITLE: Cloud Monitoring API

NAME: privilegedaccessmanager.googleapis.com
TITLE: Privileged Access Manager API

NAME: servicemanagement.googleapis.com
TITLE: Service Management API

NAME: serviceusage.googleapis.com
TITLE: Service Usage API

NAME: sql-component.googleapis.com
TITLE: Cloud SQL

NAME: storage-api.googleapis.com
TITLE: Google Cloud Storage JSON API

NAME: storage-component.googleapis.com
TITLE: Cloud Storage

NAME: storage.googleapis.com
TITLE: Cloud Storage API