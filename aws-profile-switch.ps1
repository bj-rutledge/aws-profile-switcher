# Created by BJ Rutledge 
# LICENSE MIT
# 6/8/2022

# This script allows users to easily switch aws profiles. 
# Example: 

# Switch to 'default' profile
# > Switch-AWSProfile -ProfileName 1 (short Switch-AWSProfile 1)

# Switch to 'personal' profile
# > Switch-AWSProfile -ProfileName 2 (short Switch-AWSProfile 2)

# Switch profiles with prompt 
# > Switch-AWSProfile 
# MyProfile

# Set aws profile 
function Switch-AWSProfile {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, HelpMessage='Enter the profile name')]
        [string]$ProfileName
    )
    
    begin {
        try {
            Write-Host 'AWS CLI Installation:'
            aws --version
        }
        catch {
            {
                1:  Error. It appears that you do not have the aws cli installed. 
                    
                2:  To install, visit https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html 
                    or copy the following line into the shell: 
                    
                    Invoke-WebRequest -Uri https://awscli.amazonaws.com/AWSCLIV2.msi -OutFile $env:TEMP\AWSCLIV2.msi; Start-Process -FilePath $env:TEMP\AWSCLIV2.msi
                    
                    You may need to restart the shell after install. 
                    Note: If you are using VsCode Intgrated shell, you may have some issues with AWS-CLI. But, it works fine in the regualr shell. 
            }
            break 
        }
    }
    
    process {

        switch ($ProfileName) {
            1 { 
                # change this to whatever your default profile is named.
                $ProfileName = 'default' 
            }

            2 {
                # change this to whatever your personal profile is named
                $ProfileName = 'personal'
            }
            # ... Add any other conditions you wish to switch on. 
            Default {}
        }
        $Env:AWS_PROFILE = $ProfileName
    }
    
    end {
        Write-Host 'AWS CLI profile set to: ' $ProfileName
    }
}