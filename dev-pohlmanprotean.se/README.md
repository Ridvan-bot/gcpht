# Google Cloud Platform HashiCorp Terraform
Manage Google Cloud infrastructure using Terraform with a focus on scalability and best practices.

## Usage

1. Install Terraform:
    - Go to [Terraform Downloads](https://www.terraform.io/downloads.html).
    - Download the appropriate version for your operating system (for Windows, choose the AMD64 version).
    - Extract the downloaded zip file to a directory included in your system's PATH.

2. Create a service account and download the key file:
    - Go to [Google Cloud Console](https://console.cloud.google.com/).
    - Navigate to "IAM & Admin" > "Service Accounts".
    - Click "Create Service Account".
    - Provide a name and description, then click "Create".
    - Assign necessary roles (e.g., "Cloud Run Admin" and "Viewer"), then click "Continue".
    - Click "Create Key", select JSON, and click "Create". Save the downloaded key file securely.

3. Initialize Terraform:
    ```sh
    terraform init
    ```
    The Terraform state is stored in a Google Cloud Storage bucket for persistence and collaboration.

4. Plan the infrastructure changes:
    ```sh
    terraform plan
    ```

5. Apply the infrastructure changes:
    ```sh
    terraform apply
    ```

## Variables

The following variables are used in the Terraform configuration:

- `project_id`: The ID of the project in which to create the Cloud Run service. Default is `dev-pohlmanprotean-website`.
- `region`: The region in which to create the Cloud Run service. Default is `europe-west1`.
- `service_name_1`: The name of the first Cloud Run service. Default is `dev-pohlmanprotean-website`.
- `image`: The container image to deploy. Default is `gcr.io/dev-pohlmanprotean-website/dev-pohlmanprotean-website-image:v0.12.0`.
- `image_name`: The container image name. Default is `dev-pohlmanprotean-website-image-1`.
- `credentials_file`: The path to the service account key file. Default is `service-account.json`.
- `namespace_1`: The namespace to apply to the first Cloud Run service. Default is `dev-pohlmanprotean-website`.
- `custom_domain`: The custom domain to map to the Cloud Run service. Default is `dev.pohlmanprotean.se.`.
- `service_id`: The ID of the Service. Default is `locations/europe-west1/namespaces/dev-pohlmanprotean-website/services/dev-pohlmanprotean-website`.
- `project_name`: The name of the project in which to create the Cloud Run service. Default is `dev-pohlmanprotean-website`.
- `service_account_name`: The name of the service account to use for the Cloud Run service.
- `container_port`: The port on which the container listens. Default is `8080`.


## Outputs

The following outputs are provided by the Terraform configuration:

- `service_1_url`: The URL of the first Cloud Run service.

## Resources

The following resources are managed by the Terraform configuration:

- `google_cloud_run_service.dev-pohlmanprotean-website`: The Cloud Run service, getting all the traffic from custom domain.
- `google_cloud_run_service_iam_member.noauth_dev-pohlmanprotean-website`: IAM member for the Cloud Run service to allow unauthenticated access.
- `google_cloud_run_domain_mapping.custom_domain_mapping`: Domain mapping for the custom domain.

## Notes

- Ensure that the `credentials_file` variable points to the correct path of your service account key file.
- If you need to import existing resources into your Terraform state, use the `terraform import` command.

## Importing Existing Resources

If you need to import existing resources into your Terraform state, use the `terraform import` command. This command allows you to bring existing resources under Terraform management.
