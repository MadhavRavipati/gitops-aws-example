# GitOps AWS Example

This repository demonstrates GitOps principles by using GitHub Actions to automatically deploy infrastructure and application code to AWS.

## Architecture

This example deploys a simple static website to an S3 bucket. The infrastructure is defined as code using Terraform and is automatically provisioned when changes are pushed to the main branch.

## Components

- **Infrastructure**: Defined in the `infrastructure/` directory using Terraform
- **Application**: Simple static website in the `app/` directory
- **CI/CD**: GitHub Actions workflow in `.github/workflows/deploy.yml`

## How It Works

1. When changes are pushed to the `main` branch, the GitHub Actions workflow is triggered
2. The workflow provisions the infrastructure using Terraform
3. It then deploys the application code to the S3 bucket
4. Finally, it validates the deployment by checking if the website is accessible

## Setup

To use this example, you need to:

1. Fork this repository
2. Add your AWS credentials as GitHub repository secrets:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
3. Push to the main branch to trigger the deployment

## GitOps Principles Applied

- **Declarative**: The entire system is described declaratively in Terraform and HTML files
- **Versioned and Immutable**: All changes are versioned in Git
- **Automatically Applied**: Changes to the main branch trigger automatic deployment
- **Continuously Reconciled**: The validation step ensures the system is in the desired state

## Additional Resources

- [GitOps: What You Need to Know](https://www.gitops.tech/)
- [Terraform Documentation](https://www.terraform.io/docs)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)