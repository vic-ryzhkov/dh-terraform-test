# DH Test Task
Description 

## Usage
1. Provide AWS authentication data and region details by one of the following way:

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
    # ~/.aws/credentials
    
    AWS_ACCESS_KEY_ID="YOUR_ACCES_KEY_ID"
    AWS_SECRET_ACCESS_KEY="YOUR_SECRET_ACCESS_KEY"
    AWS_DEFAULT_REGION="YOUR_REGION"
    ```
    
    * On Windows
    ```
    #%USERPROFILE%\.aws\credentials
    
    AWS_ACCESS_KEY_ID="YOUR_ACCES_KEY_ID"
    AWS_SECRET_ACCESS_KEY="YOUR_SECRET_ACCESS_KEY"
    AWS_DEFAULT_REGION="YOUR_REGION"    
    ```

2. Init AWS Provider 


3. Run terraform configuration
```
  
```

