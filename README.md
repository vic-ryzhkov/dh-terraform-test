# DH Test Task
Terraform configuration for S3 Bucket creation with the AES-Encryption by default.
Any questions or requests: vic.ryzhkov@gmail.com

## Usage

### Step 1: Clone this repo
  ```
  git clone https://github.com/vic-ryzhkov/dh-terraform-test.git
  ```

### Step 2: Provide AWS authentication data and region details

You can use one of the following options:

  * **Option 1** - set environment variables explicitly in command line
    * On Linux/Mac
    ```
    export AWS_ACCESS_KEY_ID="YOUR_ACCES_KEY_ID"
    export AWS_SECRET_ACCESS_KEY="YOUR_SECRET_ACCESS_KEY"
    export AWS_DEFAULT_REGION="YOUR_REGION"
    ```
    * On Windows
    ```
    SET AWS_ACCESS_KEY_ID="YOUR_ACCES_KEY_ID"
    SET AWS_SECRET_ACCESS_KEY="YOUR_SECRET_ACCESS_KEY"
    SET AWS_DEFAULT_REGION="YOUR_REGION"
    ```
    
  * **Option 2** - save environment variables in ```.aws/credentials``` file
  
    * On Linux/Mac
    ```
    # File: ~/.aws/credentials
    
    AWS_ACCESS_KEY_ID="YOUR_ACCES_KEY_ID"
    AWS_SECRET_ACCESS_KEY="YOUR_SECRET_ACCESS_KEY"
    AWS_DEFAULT_REGION="YOUR_REGION"
    ```
    
    * On Windows
    ```
    # File: %USERPROFILE%\.aws\credentials
    
    AWS_ACCESS_KEY_ID="YOUR_ACCES_KEY_ID"
    AWS_SECRET_ACCESS_KEY="YOUR_SECRET_ACCESS_KEY"
    AWS_DEFAULT_REGION="YOUR_REGION"    
    ```

### Step 3: Go to the project directory and initialize Terraform
Note: Please replace ```REPO_FOLDER``` with the folder to which you clone the repository during Step 1.
  ```
  cd REPO_FOLDER/dh-terraform-test
  terraform init
  ```

### Step 4: Plan and apply terraform configuration
 ```
 terraform plan
 terraform apply
 ```

