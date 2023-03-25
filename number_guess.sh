#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo -e "\n~~ ~~~ WELCOME TO THE NUMBER GUESSING GAME ~~~ ~~\n"

#Generate random number between 1 and 1000
SECRET_NUMBER=$(( ( RANDOM % 1000 )  + 1 ))
echo "secret number is $SECRET_NUMBER"

#get username
echo -e "Enter your username:"
read USERNAME

#check username exists in the database 
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
 
if  [[ -z $USER_ID ]]
 then 
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
  DATA_ENTRY_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
 else

    GAMES_PLAYED=$($PSQL "SELECT count(game_id) FROM games WHERE user_id=$USER_ID")
    BEST_GAME=$($PSQL "SELECT MAX(numOfguesses) FROM games WHERE user_id=$USER_ID")
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  
fi




echo -e "\nGuess the secret number between 1 and 1000:"
read NUMBER_GUESSED

Num_of_guesses='1'

if [[ ! $NUMBER_GUESSED =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read NUMBER_GUESSED
fi



while [[ ! $NUMBER_GUESSED -eq $SECRET_NUMBER ]]
do 
  
  if [[ $NUMBER_GUESSED -lt $SECRET_NUMBER ]]
  then 
    echo -e "\nIt's higher than that, guess again:\n"
    read NUMBER_GUESSED 
    Num_of_guesses=$((Num_of_guesses+1)) 
  fi

  if [[ $NUMBER_GUESSED -gt $SECRET_NUMBER ]]
  then 
    echo -e "\nIt's lower than that, guess again:\n"
    read NUMBER_GUESSED 
    Num_of_guesses=$((Num_of_guesses+1)) 
  fi

done
  
  echo -e "\nYou guessed it in $Num_of_guesses tries. The secret number was $SECRET_NUMBER. Nice job!"



USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
DATA_ENTRY_games=$($PSQL "INSERT INTO games(user_id, numOfguesses) VALUES($USER_ID, $Num_of_guesses)")





  


