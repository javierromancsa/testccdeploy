#!/bin/bash -e

for ARGUMENT in "$@"
do
   KEY=$(echo $ARGUMENT | cut -f1 -d=)

   KEY_LENGTH=${#KEY}
   VALUE="${ARGUMENT:$KEY_LENGTH+1}"

   export "$KEY"="$VALUE"
done

yum install -y git

cd /home/$username
git clone <git repo URL>

cd AzureCycleCloudArmTemplate/script
python ccloud_install.py --azureSovereignCloud $azureSovereignCloud --tenantId $tenantId --applicationId $applicationId --applicationSecret $applicationSecret --username $username --hostname $hostname --password $password --acceptTerms
