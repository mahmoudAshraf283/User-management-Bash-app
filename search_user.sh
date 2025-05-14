#!/bin/bash

search_user() {
  read -p "Enter username to search: " username
  if grep "^$username:" /etc/passwd; then
    echo "User '$username' found."
  else
    echo "User '$username' not found."
  fi
}

search_user
