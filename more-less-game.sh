#!/bin/bash

number=$((RANDOM % 100 + 1))

for i in {1..7}
do
  echo "Enter the number:"

  read input

  if (( input < number))
  then
    echo "The number $input is less"
  elif (( number < input))
  then
    echo "The number $input is greater"
  else
    echo "You guessed the number"
    exit 0
  fi
done

echo "You didn't guess the number"


# #!/bin/bash

# # generate a random number between 1 and 100
# number=$(( (RANDOM % 100) + 1 ))

# # welcome message
# echo "Welcome to More or Less! I have chosen a number between 1 and 100. Can you guess it in seven tries?"

# # set the number of tries to 0
# tries=0

# # start the game loop
# while [ $tries -lt 7 ]
# do
#     # ask the user to enter their guess
#     read -p "Guess the number: " guess

#     # check if the guess is correct
#     if [ $guess -eq $number ]
#     then
#         echo "Congratulations, you guessed the number in $((tries+1)) tries!"
#         break
#     fi

#     # give a hint whether the guess is more or less than the chosen number
#     if [ $guess -lt $number ]
#     then
#         echo "The number is more than your guess."
#     else
#         echo "The number is less than your guess."
#     fi
    
#     # increase the number of tries
#     tries=$((tries+1))
# done

# # if the user runs out of tries without guessing the number, reveal the answer
# if [ $tries -eq 7 ]
# then
#     echo "Sorry, you ran out of tries. The number was $number. Better luck next time!"
# fi
