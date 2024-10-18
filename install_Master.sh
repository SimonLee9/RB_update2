#!/bin/bash

# Execute the first script: update_ultra.sh
echo "Running update_ultra.sh..."
/bin/bash /home/RB_update2/update_ultra.sh

# Check if the first script executed successfully
if [ $? -eq 0 ]; then
    echo "update_ultra.sh executed successfully."
else
    echo "update_ultra.sh encountered an error."
    exit 1
fi

# Execute the second script: swapfile_setting.sh
echo "Running swapfile_setting.sh..."
/bin/bash /home/RB_update2/swapfile_setting.sh

# Check if the second script executed successfully
if [ $? -eq 0 ]; then
    echo "swapfile_setting.sh executed successfully."
else
    echo "swapfile_setting.sh encountered an error."
    exit 1
fi
