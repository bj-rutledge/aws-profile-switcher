# AWS CLI Profile Switching Script 
## Created by BJ Rutledge
### 6/2022

## Description 
This scipt makes switching AWS CLI profiles simple and easy. 

## Load this script in your .bashrc script. 

### Example:
```SH 
# load aws profile switcher script 
. ~/.aws-profile-switch 
```


### Example:
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


