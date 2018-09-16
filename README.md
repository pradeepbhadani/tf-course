# tf-course

## Terraform Installation
1. Download Terraform from terroform.io

    For Mac,
      ```
      wget https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_darwin_amd64.zip -O /tmp/terraform.zip
      ```

      For Linux,
      ```
      wget https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip -O /tmp/terraform.zip
      ```

2. Extract to a directory
    ```
    mkdir -p mkdir -p ${HOME}/terraform
    unzip /tmp/terraform.zip -d ${HOME}/terraform/
    ```

3. Set Classpath
    ```
    echo 'export PATH=${HOME}/terraform:${PATH}' >> ~/.bashrc
    source ~/.bashrc
    ```


## Configure AWS
Make sure to configure AWS credentials so that terraform can create/manage AWS resources.


Create/Open `~/.aws/credentials` file and make sure it has access key and secret access key
```
[env]
region = us-west-2
output = json
aws_access_key_id = <YOUR AWS ACCESS KEY ID>
aws_secret_access_key = <YOUR AWS SECRET ACCESS KEY ID>
```
