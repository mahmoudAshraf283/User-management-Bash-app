#!/bin/bash

show_user_details() {
  read -p "Enter username to show details for: " username
  if id -u "$username" >/dev/null 2>&1; then
    echo "--- Details for user '$username' ---"
    getent passwd "$username"
    echo "------------------------------------"
  else
    echo "User '$username' does not exist."
  fi
}

show_user_details
