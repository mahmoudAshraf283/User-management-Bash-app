#!/bin/bash

delete_user() {
  read -p "Enter username to delete: " username

  if id -u "$username" >/dev/null 2>&1; then
    read -p "Are you sure you want to delete user '$username'? (y/N): " confirm
    if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
      backup_dir="/tmp/user_backups"
      mkdir -p "$backup_dir"
      sudo cp -r "/home/$username" "$backup_dir/$username"
      sudo userdel -r "$username"
      echo "User '$username' deleted and backup saved to $backup_dir."
    else
      echo "Deletion cancelled."
    fi
  else
    echo "User '$username' does not exist."
  fi
}

delete_user


