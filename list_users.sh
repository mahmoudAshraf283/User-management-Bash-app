#!/bin/bash

list_users() {
  echo "--- Users ---"
  grep '/bin/bash$' /etc/passwd | cut -d':' -f1
  echo "-----------------------------------"
}

list_users
