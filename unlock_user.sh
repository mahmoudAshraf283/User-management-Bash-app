#!/bin/bash

unlock_user() {
  read -p "Enter username to unlock: " username
  if id -u "$username" >/dev/null 2>&1; then
    sudo usermod -U "$username"
    echo "User '$username' unlocked."
  else
    echo "User '$username' does not exist."
  fi
}

unlock_user
