#!/bin/bash

while true; do
  echo "1. Show system information"
  echo "2. List users"
  echo "3. Search for user"
  echo "4. Add user"
  echo "5. Delete user"
  echo "6. Show user details"
  echo "7. Change user password"
  echo "8. Lock user"
  echo "9. Unlock user"
  echo "10. Exit"

  read -p "Enter your choice: " choice

  case "$choice" in
    1) bash system_info.sh ;;
    2) bash list_users.sh ;;
    3) bash search_user.sh ;;
    4) bash add_user.sh ;;
    5) bash delete_user.sh ;;
    6) bash show_user_details.sh ;;
    7) bash change_password.sh ;;
    8) bash lock_user.sh ;;
    9) bash unlock_user.sh ;;
    10) echo "Exiting..." ; break ;;
    *) echo "Invalid choice. Please try again." ;;
  esac
done
