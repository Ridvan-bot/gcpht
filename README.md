# Google Cloud Platform Hashicrorp TerraFrom
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
