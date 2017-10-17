#!/usr/bin/env bash

# This script will loop through potential virtual environment locations, checking if it exists
# If it does exist, it will activate it and create the requirements file in root directory
# If it does not exist, it will create the file without activation of Venv
# Add your Venv location to this list or be a barbarian without one :-)

venv_locations=(
    ~/Python_VirtualEnvs/bwa.cloud.tools/bin/activate
    YOUR_LOCATION_HERE/"Dont Forget To"/"Double Quote Sections"/"That Include Spaces"
    )

## now loop through the above array
for location in "${venv_locations[@]}"
do
    if [ -e "${location}" ]
    then
        source "${location}"
        echo "Virtual Environment Found @ $location"
        break
    else
        echo "$location does not exist"
    fi
done

pip3 freeze > ../requirements.txt
