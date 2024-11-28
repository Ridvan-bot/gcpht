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
- `service_name_2`: The name of the second Cloud Run service. Default is `dev-pohlmanprotean-website-2`.
- `image`: The container image to deploy. Default is `gcr.io/dev-pohlmanprotean-website/dev-pohlmanprotean-website-image@sha256:2c9dad3a8aa6ec3b2c42ef7f025f5a2ec5de996c4757e99fc01549c1f7caf482`.
- `credentials_file`: The path to the service account key file. Default is `service-account.json`.
- `namespace_1`: The namespace to apply to the first Cloud Run service. Default is `dev-pohlmanprotean-website`.
- `namespace_2`: The namespace to apply to the second Cloud Run service. Default is `dev-pohlmanprotean-website-2`.
- `custom_domain`: The custom domain to map to the Cloud Run service. Default is `dev.pohlmanprotean.se.`.

## Outputs

The following outputs are provided by the Terraform configuration:

- `service_1_url`: The URL of the first Cloud Run service.
- `service_2_url`: The URL of the second Cloud Run service.

## Resources

The following resources are managed by the Terraform configuration:

- `google_cloud_run_service.service_1`: The first Cloud Run service, getting all the traffic from custom domain.
- `google_cloud_run_service.service_2`: The second Cloud Run service.
- `google_cloud_run_service_iam_member.noauth_service_1`: IAM member for the first Cloud Run service to allow unauthenticated access.
- `google_cloud_run_service_iam_member.noauth_service_2`: IAM member for the second Cloud Run service to allow unauthenticated access.
- `google_cloud_run_domain_mapping.custom_domain_mapping`: Domain mapping for the custom domain.

## Notes

- Ensure that the `credentials_file` variable points to the correct path of your service account key file.
- Update the `custom_domain` variable with your actual custom domain.
- If you need to import existing resources into your Terraform state, use the `terraform import` command.