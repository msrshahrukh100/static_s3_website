## Static Website Hosting on AWS S3

### Features

- One command infra setup on AWS.
- Auto update HTML on S3 with GitHub actions. Pushing to `main` branch deploys on S3.
- Uses Cloudfront & S3 for static website hosting. Very cost effective. Very fast because of CDN.
- Supports SSL certification. No manual setup required. All via Terraform.
- Hot reload for HTML development.

### Local HTML developent

- Run `pip install -r requirements.txt` either in a Virtual environment or on the machine itself. Just one dependency so far.
- Run `python server.py` to start the development server.
- Edit HTML and see changes on the browser. 
- Commit and push to GitHub.

### Cost estimates for running one website

Apart from buying a domain name, S3 is very cheap and along with Cloudfront. Cost will be neglegible. I am assuming less than 5 rupees/per month for a single website. 

### Setting up Infrastructure on AWS

- Inside of `~/.aws/credentials` paste the AWS credentials like below.
```
    [default]
    aws_access_key_id=<access_key_id>
    aws_secret_access_key=<secret_access_key>
    region=ap-south-1
```
- Make appropiate changes to `infra/main.tf` file.
- Run `terraform init` in the infra folder.
- Run `terraform apply` to create the resources on AWS.