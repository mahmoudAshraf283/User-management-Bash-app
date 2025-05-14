#!/bin/bash

lock_user() {
  read -p "Enter username to lock: " username
  if id -u "$username" >/dev/null 2>&1; then
    sudo usermod -L "$username"
    echo "User '$username' locked."
  else
    echo "User '$username' does not exist."
  fi
}

lock_user
