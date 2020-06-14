# Code 401 Javascript Setup

## Cloud Service Providers - Microsoft Azure

As part of the 401 Curriculum and beyond, you'll be using various cloud service providers to deploy code. Here, we'll install the Azure command line tools

> Optionally, you may go to <https://portal.azure.com> and create an account. While you will not be charged, Microsoft will want a Credit Card as validation. You will get $200 in free usage credits when you create your account.

1. Install the Azure CLI tools, by running this command in your terminal:
   - `brew install azure-cli`
1. Confirm proper installation
   - `azure --version`
   - You should see output similar to the following:

   ```bash
   azure-cli                          2.7.0

   command-modules-nspkg              2.0.3
   core                               2.7.0
   nspkg                              3.0.4
   telemetry                          1.0.4

   Python location '/home/linuxbrew/.linuxbrew/Cellar/azure-cli/2.7.0/libexec/bin/python'
   Extensions directory '/home/johncokos/.azure/cliextensions'

   Python (Linux) 3.8.3 (default, May 30 2020, 10:59:58)
   [GCC 5.4.0 20160609]

   Legal docs and information: aka.ms/AzureCliLegal

   Your CLI is up-to-date.
   ```

---

### [⇐ Previous](./2-netlify.md) | [Next ⇒](./4-aws.md)
