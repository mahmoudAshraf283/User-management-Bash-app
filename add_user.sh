#!/bin/bash

add_user() {
  read -p "Enter new username: " new_username
  if id -u "$new_username" >/dev/null 2>&1; then
    echo "Username '$new_username' already exists."
  else
    sudo useradd "$new_username"
    echo "User '$new_username' added successfully."
  fi
}

add_user
