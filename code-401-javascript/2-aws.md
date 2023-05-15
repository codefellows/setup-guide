# Code 401 Javascript Setup

## Cloud Service Providers - Amazon AWS

As part of the 401 Curriculum and beyond, you'll be using various cloud service providers to deploy code. Here, we'll sign up for AWS services and install the AWS command line tools

1. Go to <https://aws.amazon.com> and create an account. While you will not be charged, Amazon will want a Credit Card as validation. You will get $200 in free usage credits when you create your account.  It is highly recommended that you [setup Billing and Cost Alerts](https://www.codefellows.org/blog/aws-without-breaking-the-bank){:target="_blank"} in your AWS account so that you do not incur unexpected charges.
    - You can create a "proxy" credit card at [privacy.com](https://privacy.com) and set a limit for charges, perhaps $1 for example.  This way you give specific permission for "how much" you might be charged; pairs well with the cost saving methods mentioned above.    
    - We will talk about AWS account security in class.  
    - If in doubt, you can wait to create an AWS account. Please ensure account creation before class 16.  Please sign up for privacy.com **now** if you intend to utilize with AWS in class 16.  Privacy.com may take up to 48 hours to activate.

1. Install the AWS CLI tools, by running this command in your terminal:
   - `brew install awscli`
1. Confirm proper installation
   - `aws --version`
   - You should see output with these versions or higher:

   ```bash
   aws-cli/2.0.19 Python/3.8.3 Linux/4.19.104-microsoft-standard botocore/2.0.0dev23
   ```

1. Install the Elastic Beanstalk CLI tools, by running this command in your terminal:
   - `brew install awsebcli`
1. Confirm proper installation
   - `eb --version`
   - You should see output with these versions or higher:

   ```bash
   EB CLI 3.20.3 (Python 3.10.)
   ```

---

### [⇐ Previous](./1-httpie.md) | [Next ⇒](./3-postgres.md)
