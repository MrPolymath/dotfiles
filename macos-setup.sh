#!/bin/bash

# Enable key repeat in VSCode (disable ApplePressAndHold for VSCode only)
echo "Disabling accent picker for VSCode..."
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Optional: Disable accent picker for VSCode Insiders
# defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false

# Adjust key repeat speed (optional, uncomment if needed)
# echo "Setting key repeat to fast..."
# defaults write -g InitialKeyRepeat -int 15  # Shorter delay before repeat
# defaults write -g KeyRepeat -int 2         # Faster key repeat speed

# Restart affected apps to apply settings
echo "Restarting VSCode to apply changes..."
killall "Visual Studio Code" || echo "VSCode is not running. Changes will apply on next start."

echo "macOS setup completed!"
