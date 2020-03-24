#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
echo "Welcome to the Calculator Program"

#To prompt user everytime an operation is done, we introduced an infitinte while loop
while true; do
  # Then, display a menu that outlines the possible operations:
    # Add
    # Subtract
    # Exit
  echo "Please select the operation you want to execute"
  echo "(A)dd"
  echo "(S)ubtract"
  echo "(M)ultiply"
  echo "(E)xit"
  # Then, capture the user selection.
  read user_selection
    #temp to check is selction is correct. remove after check
    #echo $user_selection

  #declare global variable to store user input and assign 0 to them
  first_number=0
  second_number=0

  #function to get first number
  function get_first_number(){
     echo "Please enter the First number"
     read first_number
  }
  #function to get second number
  function get_second_number(){
      echo "Please enter the Second number"
      read second_number
    }
   
  # If the selection matches a supported operation, execute the operation.
  case $user_selection in 
    "Add"|"add"|"a"|"A"|"ADD")
      #echo "User selected Add"

      #call functions to get user input
      get_first_number
      get_second_number

      #display result
      echo "The sum of $first_number and $second_number is :"
      expr $first_number + $second_number
      ;;

    "Subtract"|"subtract"|"s"|"S"|"SUBTRACT")
      #echo "User selected Subtract"

      #call functions to get user input
      get_first_number
      get_second_number

      #display result
      echo "The difference of $first_number and $second_number is :"
      expr $first_number - $second_number
      ;;
    "Multiply"|"multiply"|"m"|"M"|"MULTIPLY")
      #echo "User selected Subtract"

      #call functions to get user input
      get_first_number
      get_second_number

      #display result
      echo "The multiplication of $first_number and $second_number is :"
      expr $first_number * $second_number
      ;;
    "Exit"|"exit"|"e"|"E"|"EXIT")
      #echo "User selected Exit"
      echo "Thank you for using the program."
      exit 0
      ;;

    # If the selection does not match a support operation, display an error message.
    *)
      echo "Sorry, unsupported operation: $user_selection"
      echo "Please try again"
      ;;
  esac

  # When the operation is complete, redisplay the menu.
done