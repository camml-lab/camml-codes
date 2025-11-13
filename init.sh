#!/bin/bash

# Ensure Git submodule configuration is initialized
git submodule init

# Loop through all submodules defined in .gitmodules
# This command reads the submodule paths
git config -f .gitmodules --get-regexp submodule\..*\.path | while read key path
do
    echo "--- Attempting to update $path ---"

    # Attempt to update/clone the submodule using a selective command
    # The '|| true' ensures the entire script does not exit on failure
    if git submodule update --init -- $path; then
        echo "Successfully checked out $path."

        # Install in editable mode if it's a valid package directory
        if [ -d "$path" ] && [ -f "$path/setup.py" ]; then
            echo "Installing $path in editable mode (pip install -e)."
            pip install -e "$path"
        fi
    else
        # Handle Permission Failure (Non-fatal warning)
        echo "🚨 WARNING: Failed to update/clone $path due to access issues."
        echo "Skipping installation for this module. You can still use available codes."
    fi
    echo "-----------------------------------"
done

echo "Setup complete! Environment includes all accessible codes."