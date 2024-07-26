#!/usr/bin/env

# Update package list and upgrade all packages
sudo pacman -Syu --noconfirm

# Clean up package cache
sudo pacman -Sc --noconfirm

# Remove unused packages and dependencies
orphaned_packages=$(pacman -Qdtq)
if [[ -n $orphaned_packages ]]; then
  sudo pacman -Rns $orphaned_packages --noconfirm
fi

echo "System update and cleanup completed successfully"
