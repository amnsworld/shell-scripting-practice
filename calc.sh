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
case $user_selection in 
  "Add")
    #echo "User selected Add"
    echo "Please enter the First number"
    read first_number
    echo "Please enter the Second number"
    read second_number
    echo "The sum of $first_number and $second_number is :"
    expr $first_number + $second_number
    ;;
    "Subtract")
    #echo "User selected Subtract"
    ;;
    "Exit")
    #echo "User selected Exit"
    ;;

    # If the selection does not match a support operation, display an error message.
    *)
    echo "Sorry, unsupported operation: $user_selection"
    echo "Please try again"
esac

# When the operation is complete, redisplay the menu.
