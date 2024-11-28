# TODO List for Terraform

## VPC related

1. **Set up VPC**:
    - Create a Virtual Private Cloud (VPC) to isolate and manage network resources.
    - Configure subnets, routes, and firewall rules.

2. **Configure Cloud Run Services**:
    - Ensure both Cloud Run services are properly configured to use the VPC.
    - Update the Terraform configuration to include VPC settings for the services.

3. **Set up Load Balancer**:
    - Create a load balancer to distribute traffic between the two Cloud Run services.
    - Configure backend services, URL maps, and forwarding rules.

4. **Implement IAM Policies**:
    - Define and apply IAM policies to control access to resources.
    - Ensure least privilege principle is followed.

5. **Set up Monitoring and Logging**:
    - Configure Cloud Monitoring and Cloud Logging for the Cloud Run services.
    - Set up alerts and dashboards to monitor the health and performance of the services.

6. **Automate CI/CD Pipeline**:
    - Integrate Terraform with a CI/CD pipeline (e.g., GitHub Actions, GitLab CI).
    - Automate the deployment and management of infrastructure changes.

7. **Implement Security Best Practices**:
    - Enable VPC Service Controls to protect data and services.
    - Configure private Google Access for VPC.
    - Set up Cloud Armor for additional security.

8. **Optimize Costs**:
    - Review and optimize resource usage to reduce costs.
    - Implement cost monitoring and alerting.

9. **Document Infrastructure**:
    - Maintain up-to-date documentation of the Terraform configuration and infrastructure.
    - Include architecture diagrams and explanations of key components.

10. **Backup and Recovery**:
    - Set up backup and recovery plans for critical resources.
    - Test recovery procedures regularly.

11. **Review and Refactor Code**:
    - Regularly review and refactor Terraform code for improvements.
    - Ensure code follows best practices and is maintainable.


## Other tasks

- [ ] Fix app password logic
