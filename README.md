# Multi-stage Automated Depoloyment of Single Page Application to AWS using terraform and CircleCI

Production grade configuration of automation deployment of a react app to AWS using CircleCI and Terraform Cloud.

## Tools

- React application built with Vite
- Terraform and Terraform Cloud to build infrastructure using organized modules and best practices
- Dev and Prod stage deployments
- AWS Cloudfront, S3, IAM, ACM, Cloudfront Functions
- CircleCI pipeline steps
  - Build and test application
  - Terraform validate, plan, and apply changes
  - Deployment to AWS S3 and cloudfront with cache invalidations
  - One click deploy to prod

# changeda
