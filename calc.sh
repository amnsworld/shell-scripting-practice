#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
echo "Welcome to the Calculator Program"
# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit
echo "Please select the operation you want to execute"
echo "Add"
echo "Subtract"
echo "Exit"
# Then, capture the user selection.
read user_selection
#temp to check is selction is correct. remove after check
#echo $user_selection
# If the selection matches a supported operation, execute the operation.

# If the selection does not match a support operation, display an error message.
# When the operation is complete, redisplay the menu.
