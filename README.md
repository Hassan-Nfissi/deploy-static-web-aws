# Simple DevOps Project | DevOps Project for Practice | DevOps Project for Beginners

## Overview

This real-time DevOps project demonstrates how to set up fully automated static website hosting on AWS using Terraform. The project automates the deployment of an S3-hosted website with CloudFront CDN, Route 53 DNS, and SSL certificate management, completing the setup in just a few seconds.

## Architecture
The following AWS services are used to create a robust and scalable static website hosting solution:

- **Amazon S3**: Stores static website content.
- **Amazon CloudFront**: Serves content globally with caching for performance.
- **Amazon Route 53**: Manages DNS for the custom domain.
- **AWS Certificate Manager (ACM)**: Provides an SSL certificate for secure HTTPS access.

### Architecture Diagram
![Image](https://github.com/user-attachments/assets/bdaeb6cd-565b-4dae-9223-46798091924c)
## Prerequisites

To follow along with this project, you will need:

- An AWS account
- Terraform installed on your local machine
- A domain name registered in AWS Route 53 (optional but recommended)
- AWS CLI configured with necessary permissions

## Steps to Deploy

1. **Define AWS Provider in Terraform**
2. **Create an S3 Bucket for Static Website Hosting**
3. **Make the S3 Bucket Public** (optional if using CloudFront)
4. **Generate an `index.html` File for the Website**
5. **Upload the Website Content to S3 using Terraform**
6. **Enable Static Website Hosting on S3**
7. **Configure CloudFront to Distribute Content Securely**
8. **Use AWS Certificate Manager to Enable HTTPS**
9. **Set Up Route 53 to Point to CloudFront**
10. **Apply Terraform Configuration**

```sh
terraform init
terraform apply -auto-approve
```

## Expected Outcome

Once deployed, users can access the website securely over HTTPS using the domain name configured in Route 53. CloudFront will optimize content delivery, reducing latency.

## Key Learnings

- Terraform infrastructure automation
- AWS S3 static website hosting
- CloudFront for CDN distribution
- Route 53 domain management
- SSL/TLS certificate automation using AWS ACM

## Resources

- [Terraform Official Docs](https://developer.hashicorp.com/terraform/docs)
- [AWS Terraform Modules](https://registry.terraform.io/)
- [CloudFront Documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html)

## Connect

- **LinkedIn**: [Your Profile Link]
- **GitHub Repository**: [Your GitHub Repo Link]

If you found this project useful, feel free to give it a ⭐ on GitHub!
