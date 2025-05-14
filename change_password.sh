#!/bin/bash

change_password() {
  read -p "Enter username to change password for: " username
  if id -u "$username" >/dev/null 2>&1; then
    sudo passwd "$username"
  else
    echo "User '$username' does not exist."
  fi
}

change_password
