# AWS CLI Profile Switching Script 
## Created by BJ Rutledge
### 6/2022

## Description 
This scipt makes switching AWS CLI profiles simple and easy. 

## Included 
Script for BASH and PowerShell

## Notes: 
To install in powershell, call script in your profile.ps1
If your execution policy is strict, you will need to run: 
````ps1
Unblock-File -Path ~\Documents\WindowsPowerShell\aws-profile-switcher.ps1
````
If you do not have the AWS CLI installed on your windows machine, you can install it with the following command:
````ps1
Invoke-WebRequest -Uri https://awscli.amazonaws.com/AWSCLIV2.msi -OutFile $env:TEMP\AWSCLIV2.msi; Start-Process -FilePath $env:TEMP\AWSCLIV2.msi
````
or visit: 
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html 

## Happy Coding!!!

## Load this script in your .bashrc script. 
# BASH Examples. 
### Examples:
```SH 
# load aws profile switcher script in .bashrc
. ~/.aws-profile-switch 
```


### BASH Examples:
```SH 

# Switch to 'default' profile
awsprofile 1

# Switch to 'personal' profile
awsprofile 2

# Switch profiles with prompt \
awsprofile 
MyProfile

# Switch profile without prompt 
awsprofile MyProfile 

```


### PowerShell Examples: 
````ps1
# load profile switcher script in profile.ps1
. ~\aws-profile-switcher.ps1

````

````ps1

# Switch to 'default' profile
Switch-AWSProfile -ProfileName 1 (short Switch-AWSProfile 1)

# Switch to 'personal' profile
Switch-AWSProfile -ProfileName 2 (short Switch-AWSProfile 2)

# Switch profiles with prompt 
Switch-AWSProfile 
cmdlet Switch-AWSProfile at command pipeline position 1
Supply values for the following parameters:
(Type !? for Help.)
ProfileName: MyProfile


````
